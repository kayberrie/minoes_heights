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
#

class ServiceItem < ApplicationRecord

end
