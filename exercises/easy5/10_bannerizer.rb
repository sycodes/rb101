# Write a method that will take a short line of text, and print it within a box.

# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

# 1. Understand the Problem
# input
#   -string
# output
#   -string
# rules
#   -upper and lower dash lines correspond to # of chars in string
#   -print text within box
# mental model
#   -get number of character in string
#   -add corresponding amount of dashes + 2 more on top and bottom
#   -print string in middle

# 3. Data Structure
# input
#   -string
# rules
#   -string

# 4. Algorithm
# Get the size of text
# add the same amount of "-" dashes on top and bottom
# add the same amount of " " spaces from side to side
# add the text in the middle

def print_in_box(text)
  size = text.size
  horizontal_dashes = "+--+"
  sides = "|  |"
  middle_side = "|  |"

  size.times { horizontal_dashes.insert(2, "-") }
  size.times { sides.insert(2, " ") }
  1.times { middle_side.insert(2, text) }

  puts horizontal_dashes
  puts sides
  puts middle_side
  puts sides
  puts horizontal_dashes
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
