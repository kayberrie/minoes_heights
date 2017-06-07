# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  date       :string
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Review < ApplicationRecord
 belongs_to :user
end
