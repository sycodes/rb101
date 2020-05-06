# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. 
# The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

def staggered_case(string)
  result = ''
  alphabets = ("a".."z").to_a + ("A".."Z").to_a
  need_upper = true

  string.chars.each do |char|
    if need_upper && alphabets.include?(char)
      result += char.upcase
      need_upper = !need_upper
    elsif !need_upper && alphabets.include?(char)
      result += char.downcase
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'