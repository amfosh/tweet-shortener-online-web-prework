def dictionary
  words = {"hello" => 'hi',
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"}
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.each_with_index do |word, index|
    dictionary.keys.each do |key|
      if key == word.downcase
        tweet_array[index] = dictionary[key]
      end
    end
  end
  tweet_array.join(" ")

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end