# == Schema Information
#
# Table name: service_items
#
#  id          :integer          not null, primary key
#  name        :string
#  price       :string
#  duration    :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  service_id  :integer
#

class ServiceItem < ApplicationRecord
  belongs_to :service
end
