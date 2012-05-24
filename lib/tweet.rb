require "tweet/version"
require "twitter"

module Tweet
 extend Twitter

  class << self

    # returns a list of words
    # ordered in descending by frequency of occurrence
    # in last 1000 tweets
    # The method has a limitation of 3200 tweets

    def word_freq(user,options={})
       freq = Hash.new(0)
       options.merge!( { :count => 1000 } ) unless (options.has_key? :count && options[:count] <= 1000 )
       statuses = Twitter.user_timeline(user, options)
       statuses.each {|status| status.text.scan(/\w+/){|w| freq[w] += 1}}
       freq.keys.sort{|x,y| -(freq[x] <=> freq[y])}
    end

  end

end
