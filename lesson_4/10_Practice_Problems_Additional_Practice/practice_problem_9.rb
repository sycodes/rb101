#Write your own version of the rails titleize implementation.

# 1. Understand the Problem:
# -input
#   a string of words
# -output
#   a string of words, with first letter of each word capitalized
# -mental model
#   take each word
#   capitalize the first letter

# 2. Examples / Test Cases:
# "the flintstones rock" == "The Flintstones Rock"

# 3. Data Structure:
# -input
#   string
# -rules
#   array

# 4. Algorithm:
# -split string into an array of words
# -capitalize the first letter
# -join the array into a string
#     -don't forget to add spaces with join(" ")

def titleize(string)
  array = string.split

  array.each do |word|
    word.capitalize!
  end

  array.join(" ")
end

p titleize("the flintstones rock")