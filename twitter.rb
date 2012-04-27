require 'hpricot'
require 'open-uri'

def hpricot(account = "sr_valeriano")
  file = open("http://twitter.com/#{account}")
  Hpricot(file)
end

def tweets(doc)
  tweets = doc / ".entry-content"
  tweets.each do |tweet|
    puts tweet.inner_text
    puts "_____________\n\n"
  end
end

doc = hpricot("sr_valeriano")
tweets(doc)