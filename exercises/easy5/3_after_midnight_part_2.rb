# As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight. 
# If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format, 
# and return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# 1. Understand the Problem:
# -input
#   a string, 'hr:min'
# -output
#   integer, total mins at time of day
# -rules
#   if num of mins is +, the time is after midnight
#   if num of mins is -, the time is before midnight
#   methods should return a value in the range 0..1439
# -mental model
#   after_midnight
#     break hours down to mins. Add all mins.
#   before_midnight
#     Take hrs:mins and go BACKWARDS from 12midnight -> 12afternoon. 
#     Find hour and convert to 24 hr format

# 2. Exercises / Test Cases:
# after_midnight('00:00') == 0
# before_midnight('00:00') == 0
# after_midnight('12:34') == 754 #=> mins in 12:34 PM
# before_midnight('12:34') == 686 #=> mins in 11:26 AM
# after_midnight('24:00') == 0
# before_midnight('24:00') == 0

# 3. Data Structure:
# -input
#   string
# -rules
#   integer

# 4. Algorithm:
# first, split the string at ":" into an array
# hr = array[0].to_i
# min = array[1].to_i
# -after_midnight
#   -hr*60 + min
# -before_midnight
#   (24 - hr) -1 #=> 11
#   (60 - min) #=>26
#   hr*60 + min

def after_midnight(string)
  array = string.split(':')
  hr = array[0].to_i
  min = array[1].to_i

  if string == '24:00'
    0
  else
    hr*60 + min
  end
end

def before_midnight(string)
  array = string.split(':')
  hr = array[0].to_i
  min = array[1].to_i

  if string == '24:00'
    0
  elsif string == '00:00'
    0
  else
    hour = (24 - hr) - 1
    minute = 60 - min
    (hour * 60) + minute
  end
end

puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0

