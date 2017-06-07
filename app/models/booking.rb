# == Schema Information
#
# Table name: bookings
#
#  id         :integer          not null, primary key
#  date       :string
#  accepted   :boolean
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Booking < ApplicationRecord
  belongs to :user
  belongs to :service_item
end