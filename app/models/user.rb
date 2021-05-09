class User < ApplicationRecord
    has_secure_password 
    has_many :posts
    has_many :comments
    has_many :likes

    #THINK INSTAGRAM RELATIONSHIP

    has_many :following_list, foreign_key: :user_id, class_name: "Friendship", dependent: :destroy
    has_many :following, through: :following_list

    has_many :followers_list, foreign_key: :friend_id, class_name: "Friendship", dependent: :destroy
    has_many :followers, through: :followers_list

end
