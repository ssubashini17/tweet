# Tweet 

This Ruby Gem uses the Twitter API to get the words in the 1000 recent tweets and returns them in the descending order of their frequency of occurence


## Installation

Add this line to your application's Gemfile:

    gem 'tweet'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tweet

## Usage

   require 'tweet'

   # By default returns words from 1000 tweets  
   Tweet.word_freq( screen_name )

   # Returns words from maximum of 3200 tweets 
   Tweet.word_freq( screen_name, {:count => 2000} )

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
