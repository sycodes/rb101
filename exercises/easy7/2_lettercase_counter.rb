# Write a method that takes a string, and then returns a hash that contains 3 entries:
# one represents the number of characters in the string that are lowercase letters, 
# one the number of characters that are uppercase letters, 
# and one the number of characters that are neither.

# 1. Understand the Problem
# input
#   -string
# output
#   -hash
#   -k: lowercase, uppercase, neither
#   -v: numbers
# implicit rules
#   -spaces count as neither
# mental model
#   -turn string to array
#   -iterate through array
#   -if A-Z, +=1 in uppercase, etc.

# 3. Data Structure
# input
#   -array
# mental model
#   -hash

# 4. Algorithm
# hash = {"lowercase" => 0, "uppercase" => 0, "neither" => 0}
# Split the string into an array of characters.
# Iterate through array.
# If ("a".."z").to_a.include?(element)
# hash["lowercase"] += 1
# elsif ("A".."Z").to_a.include?(element)
# hash["uppercase"] += 1
# else
# hash["neither"] += 1

require 'pry'

def letter_case_count(string)
  hsh = { lowercase: 0, uppercase: 0, neither: 0 }
  arr = string.chars

  arr.each do |element| 
    if ("a".."z").to_a.include?(element)
      hsh[:lowercase] += 1
    elsif ("A".."Z").to_a.include?(element)
      hsh[:uppercase] += 1
    else
      hsh[:neither] += 1
    end
  end
  hsh
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
