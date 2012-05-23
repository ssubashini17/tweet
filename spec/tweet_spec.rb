require 'tweet'
require 'twitter'

describe Tweet do

  context "when delegating to twitter client" do

    it "should have same number of words as tweet client" do
        freq = Hash.new(0) 
        options = { :count => 1000 } 
        statuses = Twitter.user_timeline('ssandy987', options)
        statuses.each {|status| status.text.scan(/\w+/){|w| freq[w] += 1}}
        tweet_client_output = Tweet.word_freq('ssandy987',{})
        freq.length.should eq(tweet_client_output.length)
    end

    it "should have same word count as in tweets" do
        tweet_client_output = Tweet.word_freq('ssandy987',{}) 
        tweet_client_output[0].should == "tweet" 
    end

  end
end
