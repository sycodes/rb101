# In the modern era under the Gregorian Calendar, 
# leap years occur in every year that is evenly divisible by 4, 
# unless the year is also divisible by 100. 

# If the year is evenly divisible by 100, 
# then it is not a leap year unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. 
# Write a method that takes any year greater than 0 as input, 
# and returns true if the year is a leap year, or false if it is not a leap year.

# 1. Understand the Problem:
# -input:
#   pos integer (year)
# -output
#   boolean t (leap year) or f (not leap year)
# -rules
#   leap year is evenly divisible by 4 and NOT by 100
#   leap year is evenly divisible by 100 AND 400
# -mental model
#   check if year meets either conditions

# 2. Examples / Test Cases:
# leap_year?(2016) == true
# leap_year?(2015) == false
# leap_year?(2100) == false
# leap_year?(2400) == true
# leap_year?(240000) == true
# leap_year?(240001) == false
# leap_year?(2000) == true
# leap_year?(1900) == false
# leap_year?(1752) == true
# leap_year?(1700) == false
# leap_year?(1) == false
# leap_year?(100) == false
# leap_year?(400) == true

# 3. Data Structure
# -input:
#   integer
# -rules:
#   integer
#   logic/code

# 4. Algorithm
#   -if (year%4 == 0) && (year%100 != 0) is true
#     return true
#   -if (year%100 ==0) && (year%400 ==0) is true
#     return true

def leap_year?(year)
  return true if (year % 4 == 0) && (year % 100 != 0)

  if (year % 100 == 0) && (year % 400 == 0)
    true
  else
    false
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true
