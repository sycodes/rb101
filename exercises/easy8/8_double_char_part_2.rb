# Write a method that takes a string, and returns a new string in which every consonant character is doubled. 
# Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

def double_consonants(string)
  double_string = ''
  string_chars = string.chars
  vowels = ["a", "e", "i", "o", "u"]
  alphabets = ("a".."z").to_a + ("A".."Z").to_a

  string_chars.each do |char|
    if vowels.include?(char) 
      double_string << char
    elsif alphabets.include?(char)
      double_string << char * 2
    else
      double_string << char
    end
  end
  double_string
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""