require 'pry'

def translate(value)
result = []
vowels = ["a","e","i","o","u"]
words = value.split(" ")
  words.each do |cut|
    word = cut.split(//)
    if vowels.include?(word[0])
      word << "ay"
      result << word.join
    else
      until vowels.include?(word[0])
        if word[0] == "q" && word[1] == "u"
          word.rotate!(1)
        end
        word.rotate!
      end
      word << "ay"
      result << word.join
    end
  end
puts result.join(" ")
result.join(" ")
end

# test = translate("banana")
