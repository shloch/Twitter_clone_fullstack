class Tweet < ApplicationRecord
  belongs_to :user
  has_many :retweets
  has_many :hashtag_tweets
end
