# Write your code here.

def dictionary()
  dictionary = {
    "hello" => "hi",
    "too" => "2",
    "to" => "2",
    "two" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  arr = tweet.split(" ")
  arr.each_with_index do |word, index|
    dictionary.keys.each do |key|
      if key == word.downcase
        arr[index] = dictionary[key]
      end
    end
  end
  arr.join(" ")
end

def bulk_tweet_shortener(array_of_tweets)
  array_of_tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  end
  tweet
end

def shortened_tweet_truncator(tweet)
  modified_tweet = selective_tweet_shortener(tweet)
  if modified_tweet.length > 140
    return modified_tweet[0..136] + "..."
  end
  modified_tweet
end

shortened_tweet_truncator("hello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello worldhello world")
