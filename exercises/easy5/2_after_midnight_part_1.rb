# The time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). 
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# 1. Understand the Problem:
# -input
#   pos or neg integer
# -output
#   string ("hh:mm")
# -rules
#   if mins is pos, the time is after midnight
#   if mins is neg, the time is before midnight
#   60 mins = 1 hour
# -mental model
#   use divmod to get hr and min
#   use format to get hr:min

# 2. Examples / Test Cases:
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# 3. Data Structure:
# -input
#   integer
# -rules
#   integer

# 4. Algorithm:
#   -MINS_PER_HR = 60
#   -HRS_PER_DAY = 24
#   -MINS_PER_DAY = MINS_PER_HR * HRS_PER_DAY
#   -get the hrs and mins of delta_mins
#      delta_mins = delta_mins % MINS_PER_DAY
#      hrs, mins = delta_mins.divmod(MINS_PER_HR)
#   -format it 

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes =  delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

