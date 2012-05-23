# Tweet 

This Ruby Gem uses the Twitter API to get the words in the 1000 recent tweets and returns them in the descending order of their frequency of occurence


## Installation

install gem from pkg/ as:

    $ gem install tweet-0.0.1

uninstall gem :

    $ gem uninstall tweet

## Usage

    $ require 'tweet'

    # By default returns words from 1000 tweets  
    $ Tweet.word_freq( screen_name )

    # Returns words from maximum of 3200 tweets
    $ Tweet.word_freq( screen_name, {:count => 2000} )

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
