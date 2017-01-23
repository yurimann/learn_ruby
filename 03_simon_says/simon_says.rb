def echo(greeting)
  "#{greeting}"
end

def shout(greeting)
  "#{greeting.upcase}"
end

def repeat(string, num = 2)
  Array.new(num, string).join(' ')
end

def start_of_word(string, number)
  string.split
  string[0..number-1]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(words)
  words.capitalize!
  small = ["and", "the", "over"]
  words.split(" ").each  {|word|
      word.capitalize! unless small.include?(word)
    }.join(" ")
end
