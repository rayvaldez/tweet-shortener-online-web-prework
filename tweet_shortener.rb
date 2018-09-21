require 'pry'

def dictionary
  subbed_words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }

end

def word_substituter (tweet)
  array = tweet.split(" ")
  dictionary.keys.each do |word|
    array.map! { |w| w.downcase == word ? dictionary[word] : w}
  end
  array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  truncate = selective_tweet_shortener(tweet)
  if tweet.length <140
    tweet
  elsif
    truncate.length >140
    truncate[0...137] + "..."
  else
    truncate
end
end
