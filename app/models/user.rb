# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  surname         :string
#  room_number     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password        :text
#  password_digest :text
#  email           :email_address
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
