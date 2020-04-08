# The British Empire adopted the Gregorian Calendar in 1752, which was a leap year. 

# Prior to 1752, the Julian Calendar was used. Under the Julian Calendar, 
# leap years occur in any year that is evenly divisible by 4.

# Update the method from the previous exercise to determine leap years both before and after 1752.

# 1. Understand the Problem:
# -input
#   pos integer (year)
# -output
#   boolean t (leap year) or f (not leap year)
# -rules
#  -year < 1752
#     leap year is evenly divisible by 4
#  -year >= 1752
#     leap year is evenly divisible by 4 and NOT by 100
#     leap year is evenly divisible by 100 AND 400
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
# leap_year?(1700) == true
# leap_year?(1) == false
# leap_year?(100) == true
# leap_year?(400) == true

# 3. Data Structure
# -input:
#   integer
# -rules:
#   integer
#   logic/code

# 4. Algorithm
#   -year < 1752
#     -true if year % 4 == 0
#   -year >= 1752
#     -if (year%4 == 0) && (year%100 != 0) is true
#     return true
#     -if (year%100 ==0) && (year%400 ==0) is true
#     return true

def julian_leap_year?(year)
  if year % 4 == 0
    true
  else
    false
  end
end

def leap_year?(year)
  return julian_leap_year?(year) if year < 1752

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
puts leap_year?(1700) == true
puts leap_year?(1) == false
puts leap_year?(100) == true
puts leap_year?(400) == true
