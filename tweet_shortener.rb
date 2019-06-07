def dictionary(item)
  dictionary = {"hello" => 'hi',
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
  string.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
   end.join(" ")
end 

