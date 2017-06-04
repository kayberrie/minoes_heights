# == Schema Information
#
# Table name: users
#
#  id          :integer          not null, primary key
#  name        :string
#  surname     :string
#  room_number :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  password    :text
#

class User < ApplicationRecord
	has_secure_password

	validates :name, presence: true
	validates :surname, presence: true
	validates :room_number, presence: true, uniqueness: true
	validates :password, presence: true

	def self.authenticate(room_number, password)
		username = User.find_by(room_number: room_number).try(:authenticate, password)
		return nil unless username.present?
		username
	end

end
