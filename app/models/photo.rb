class Photo < ApplicationRecord

    validates :user_id, presence: true
    
    has_many :likes
    has_many :users
    has_many :comments

end
