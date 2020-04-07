# Write a method that takes a year as input and returns the century. 
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. 
# So, the years 1901-2000 comprise the 20th century.

# 1. Understand the Problem:
# -input: integer
#   -a year
# -output: string
#   -begins with century number
#   -ends with st, nd, rd, or th
# -rules:
#   -1: st
#   -2: nd
#   -3: rd
#   -4-20: th
#   -21: st
#   -22: nd
#   -23: rd
#   -24-30: th
#   -generalize:
#     -century % 10
#       -1, 2, 3: st, nd, rd
#       -0, 4-9: th
#     -except for 11, 12, 13

# 2. Examples / Test Cases:
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'

# 3. Data Structure:
# -input
#   -number
# -rules
#   -logic/code

# 4. Algorithm:
# -century = ((year-1) / 100) + 1
# -suffix = 
#     -century % 10 for all except...
#     -century % 100 for numbers ending in 11, 12, 13

def century_suffix(century)
  return "th" if (11..13).include?(century % 100)
  suffix = century % 10

  case suffix
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  else "th"
  end
end

def century(year)
  century = ((year-1) / 100) + 1
  century.to_s + century_suffix(century)
end

puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'
