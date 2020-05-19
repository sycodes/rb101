arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 

# When you use do...end block, p and arr.sort bind more tightly due to Ruby's precedence rules.
# Therefore, you are passing the block to the return value of p arr.sort.
# To fix this, use parentheses to seperate p from everything else.
# OR use curly braces instead of do...end.