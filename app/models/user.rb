# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  superadmin_role        :boolean          default("f")
#  service_provider_role  :boolean          default("f")
#  user_role              :boolean          default("t")
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def self.authenticate(email, password)
    username = User.find_by(email: email).try(:authenticate, password)
    return nil unless username.present?
    username
  end


end
