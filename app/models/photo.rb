class Photo < ApplicationRecord

    validates :user_id, presence: true
    
    has_many :likes
    has_many :comments
    
    belongs_to :user

end
