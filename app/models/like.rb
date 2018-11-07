# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  photo_id   :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
    
    validates :user_id, presence: true
    validates :user_id, uniqueness: { scope: :photo_id }
    validates :photo_id, presence: true
    
    belongs_to :user
    belongs_to :photo
    
end
