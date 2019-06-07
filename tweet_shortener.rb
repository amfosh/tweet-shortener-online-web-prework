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
  
  tweets.each do |x,y|
    if (x==item)
      return y
    end  
 end
 item
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
end