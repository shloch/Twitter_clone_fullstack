class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #tutorial twitter data structure --> https://stackoverflow.com/questions/3397920/relationship-like-twitter-followers-followed-in-activerecord
  has_many :followers, :class_name => 'Following', :foreign_key => 'user_id'
  has_many :followings, :class_name => 'Following', :foreign_key => 'follower_id'
  has_many :tweets
  has_many :retweets

end
