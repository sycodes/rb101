# Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
# and returns a String that represents that angle in degrees, minutes and seconds. 
# You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds. 
# A degree has 60 minutes, while a minute has 60 seconds.

# 1. Understand the Problem
# input
#   -integer
# output
#   -string "%(degree minute second)"
# rules
#   -the number left of decimal is degree
#   -the number right of decimal * 60 is minutes
#   -the remainder * 60 is seconds

# 2. Examples / Test Cases
# dms(30) == %(30°00'00")
# dms(76.73) == %(76°43'48")
# dms(254.6) == %(254°36'00")
# dms(93.034773) == %(93°02'05")
# dms(0) == %(0°00'00")
# dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# 3. Data Structure
# input
#   -integer
# rules
#   -integer

# 4. Algorithm
# to get the degree 76.73.to_i = 76
# to get minutes ((76.73 % 1) * 60)
# to get seconds ((((76.73 % 1) * 60) % 1)* 60)
# two digit numbers with leading zeros sprintf("%0.0f", number)

DEGREE = "\xC2\xB0"

def dms(num)
  degree = num.to_i.to_s
  minutes = sprintf("%0.2d", ((num % 1) * 60).to_i)
  seconds = sprintf("%0.2d", ((((num % 1) * 60) % 1) * 60).to_i)

  "%(#{degree}#{DEGREE}, #{minutes}', #{seconds}'')"
end

puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")