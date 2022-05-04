# https://leetcode.com/problems/design-twitter/

class Twitter
  attr_reader :tweets, :follows

  def initialize()
    @tweets = []
    @follows = Hash.new{[]}
  end

=begin
  :type user_id: Integer
  :type tweet_id: Integer
  :rtype: Void
=end
  def post_tweet(user_id, tweet_id)
    @tweets << [user_id, tweet_id]
  end

=begin
  :type user_id: Integer
  :rtype: Integer[]
=end
  def get_news_feed(user_id)
    followees = @follows[user_id]
    @tweets.select{|uid, _| [user_id, followees].flatten.include?(uid)}.map(&:last).reverse.first(10)
  end

=begin
  :type follower_id: Integer
  :type followee_id: Integer
  :rtype: Void
=end
  def follow(follower_id, followee_id)
    @follows[follower_id] += [followee_id]
  end

=begin
  :type follower_id: Integer
  :type followee_id: Integer
  :rtype: Void
=end
  def unfollow(follower_id, followee_id)
    @follows[follower_id].delete(followee_id)
  end
end

# Your Twitter object will be instantiated and called as such:
# obj = Twitter.new()
# obj.post_tweet(user_id, tweet_id)
# param_2 = obj.get_news_feed(user_id)
# obj.follow(follower_id, followee_id)
# obj.unfollow(follower_id, followee_id)
