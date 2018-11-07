# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  photo_id   :integer
#  body       :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord

    validates :user_id, presence: true
    validates :photo_id, presence: true
    validates :body, presence: true
    
    belongs_to :user
    belongs_to :photo

end
