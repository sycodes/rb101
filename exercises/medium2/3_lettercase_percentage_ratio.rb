# 1. Understand the Problem
# -input
#   a string of uppercase letters, lowercase letters, and neither
# -output
#   a hash with values of their ratios
# -rules
#   spaces count as neither
# -metal model
#   count all uppercase letters, lowercase letters, and neither
#   calculate ratio

# 2. Data Structure
# -input
#   array of chars
# -output
#   hash of ratios
#   e.g. { lowercase: 50, uppercase: 10, neither: 40 }

# 3. Algorithm
# a. initiate a hash
#     hash = { lowercase: 0, uppercase: 0, neither: 0 }
# b. split string into array of chars
#     string.chars
# c. iterate through array to count each char
#     hash['lowercase'] += 1
# d. iterate through hash to get ratio
#     (lettercase number / total number) * 100%

require 'pry'

def letter_percentages(string)
  ratio = { lowercase: 0, uppercase: 0, neither: 0 }
  chars_arr = string.chars
  uppercase = ("A".."Z").to_a
  lowercase = ("a".."z").to_a

  chars_arr.each do |char|
    if uppercase.include?(char)
      ratio[:uppercase] += 1
    elsif lowercase.include?(char)
      ratio[:lowercase] += 1
    else
      ratio[:neither] += 1
    end
  end

  ratio.each do |key, value|
    ratio[key] = ((value.to_f / chars_arr.size.to_f) * 100).round(2)
  end
  ratio
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }