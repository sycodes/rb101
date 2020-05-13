# Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. 
# Sentences may end with periods (.), exclamation points (!), or question marks (?). 
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. 
# You should also print the number of words in the longest sentence.

# 1. Understand the Problem
# input
#   -string (a block of multi-sentence text)
# output
#   -integer (number of words in the longest sentence)
# rules
#   -sentences end with period (.), exclamation points (!), or question marks (?)
#   -not words: spaces, commas (,), and sentence-ending characters 
#   -word: "--"
# mental model
#   -get array of words; iterate through each word to find where each sentence ends
#   -see which sentence has the most words; print the number

# 3. Data Structure
# input
#   -array
# rules
#   -if/else statement

# 4. Algorithm
# -get array of sentences
#      sentence.split at . ! ?
# -iterate each sentence to get count

current_count = 0
bigger_count = 0

text = File.read('pg84.txt')
sentences = text.split(/\.|\?|!/)

sentences.each do |sentence|
  current_count = sentence.split.count

  if current_count > bigger_count
    bigger_count = current_count
  end
end

p bigger_count

