# Write a method that takes a first name, a space, and a last name passed as a single String argument, 
# and returns a string that contains the last name, a comma, a space, and the first name.

def swap_name(full_name)
  name_arr = full_name.split

  name_arr[0], name_arr[1] = name_arr[1], name_arr[0]
  name_arr.join(", ")
end

p swap_name('Joe Roberts') == 'Roberts, Joe'