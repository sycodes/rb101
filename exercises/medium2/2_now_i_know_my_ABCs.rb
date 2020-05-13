# 1. Understand the Problem
# -input
#   string word
# -output
#   boolean
# -rules
#   you have a collection of spelling blocks; each block has two letters
#   a word can only use one letter per block
#   not case sensitive
# -mental model
#   for each letter, mark that block as "used"

# 2. Data Structure
# -input
#   array of characters
# -rules
#   use hash to store blocks
#     k = first letter
#     v = second letter

# 3. Algorithm
# a. split string into an array of characters
#     -string.characters
# b. initiate hash of letters
#     -hash = {"B" => "O"}
# c. iterate each hash k-v pair
#     -if array includes hash key AND hash value
#       false
#     else
#       true

require 'pry'

BLOCKS = { "B" => "O", "X" => "K", "D" => "Q", "C" => "P", "N" => "A",
            "G" => "T", "R" => "E", "F" => "S", "J" => "W", "H" => "U",
            "V" => "I", "L" => "Y", "Z" => "M" }

def block_word?(string)
  chars_arr = string.chars.map(&:upcase)

  BLOCKS.each do |key, value|
    if chars_arr.include?(key) && chars_arr.include?(value)
      return false
    end
  end
  true
end

p block_word?('BATCH')
p block_word?('BUTCH')
p block_word?('jest')