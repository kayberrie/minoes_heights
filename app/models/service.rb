# == Schema Information
#
# Table name: services
#
#  id          :integer          not null, primary key
#  name        :string
#  user_id     :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Service < ApplicationRecord
has_many :service_items
belongs_to :user
  enum service_category: [:hair, :electronics, :cell_group, :events, :goods, :tutoring,:prayer]

end
