class User < ApplicationRecord
  #tutorial twitter data structure --> https://stackoverflow.com/questions/3397920/relationship-like-twitter-followers-followed-in-activerecord
  has_many :followers, :class_name => 'Following', :foreign_key => 'user_id'
  has_many :followings, :class_name => 'Following', :foreign_key => 'follower_id'
end
