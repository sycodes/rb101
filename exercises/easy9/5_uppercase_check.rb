#compare if string is equal to string.upcase

def uppercase?(string)
  if string == string.upcase
    true
  else
    false
  end
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true