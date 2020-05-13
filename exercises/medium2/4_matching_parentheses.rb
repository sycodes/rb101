# 1. Understand the Problem
# -input
#   a string
# -output
#   boolean
# -rules
#   return true if all parentheses in string are properly balanced, false otherwise
#   parentheses must start with a (
# -mental model
#   take out all characters except ( and )
#   true if: array[0] = "(" and parentheses are even

# 2. Data Structure
# -input
#   array
# -rules
#   if statement

# 3. Algorithm
# a. take out all characters except ( and )
#     array_char = string.chars 
#     array_parentheses = array_char.select { |char| word.include?("(") || word.include? (")")}
# b. true if:
#      -array_parentheses[0] == "("
#      -array_parentheses inside identical, outside opposites
#         e.g. (())  (())

require 'pry'

def balanced?(string)
  array = string.chars.select { |char| char.include?("(") || char.include?(")") }
  array_without_ends = array.slice(1..(array.size - 2))

  if array.empty? != true
    array_halved = array_without_ends.partition.with_index { |_, indx| indx >= array_without_ends.size/2 }
  end

  if array.empty?
    return true
  elsif array.size.odd?
    return false
  elsif (array.size == 2) && (array[0] == "(" && array[-1] == ")")
    return true
  elsif (array_halved[0] == array_halved[1]) && (array[0] == "(" && array[-1] == ")")
    return true
  else
    return false
  end
end


p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false