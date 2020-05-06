# Write a method that takes a String as an argument, 
# and returns a new String that contains the original value using a staggered capitalization scheme 
# in which every other character is capitalized, and the remaining characters are lowercase. 
# Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# 1. Understand the Problem
# input
#   -string 
# output
#   -string, staggered upper and lower cased letters
# implicit rules
#   -non-alphabetic characters should not be changed, but should count as characters when switching between upper and lowercase
# mental model
#   -if index.odd? && alphabetic character, capitalize char 
#   -if index.even? && alphabetic character, lowercase char 
#   -else, return char 

# 3. Data Structure
# input
#   -array of chars 
# rules 
#   -array

# 4. Algorithm
# arr = string.chars 
# new_arr = iterate through array of chars using map
#   -if index.odd? && alphabetic character, capitalize char 
#   -if index.even? && alphabetic character, lowercase char 
#   -else, return char 
# new_arr.join

def staggered_case(string)
  arr = string.chars
  alphabets = ("a".."z").to_a + ("A".."Z").to_a

  new_arr = arr.map.with_index do |letter, indx|
              if indx.odd? && alphabets.include?(letter)
                letter.downcase
              elsif indx.even? && alphabets.include?(letter)
                letter.upcase
              else
                letter
              end
            end
  new_arr.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'