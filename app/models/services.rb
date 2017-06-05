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

class Services < ApplicationRecord

end
