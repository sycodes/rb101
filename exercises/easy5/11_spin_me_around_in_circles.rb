def spin_me(str)
  str.split.each do |word| # String#split returns a new array == new object
    word.reverse! # String#reverse! mutates each element in the array = same object
  end.join(" ") # String#join returns a new string == new object
end

spin_me("hello world")