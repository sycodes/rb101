# Write a method that determines the mean (average) of the three scores passed to it, 
# and returns the letter value associated with that grade.

# 1. Understand the Problem
# input
#   -3 integers
# output
#   -a string letter
# mental model
#   -average: add 3 integers, divide sum by 3
#   -if average is in hash value, return hash key

require 'pry'

GRADES = { "A" => (90..100).to_a, 
        "B" => (80..89).to_a,
        "C" => (70..79).to_a,
        "D" => (60..69).to_a,
        "F" => (0..59).to_a }

def get_grade(g1, g2, g3)
  average = (g1 + g2 + g3)/3
  letter = ''

  GRADES.each do |grade, range|
    if range.include?(average)
      letter << grade
    end
  end
  letter
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"