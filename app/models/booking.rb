class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service_item
end