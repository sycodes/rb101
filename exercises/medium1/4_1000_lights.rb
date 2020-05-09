# You have a bank of switches before you, numbered from 1 to n. 
# Each switch is connected to exactly one light that is initially off. 
# You walk down the row of switches and toggle every one of them. 

# You go back to the beginning, and on this second pass, you toggle switches 2, 4, 6, and so on. 
# On the third pass, you go back again to the beginning and toggle switches 3, 6, 9, and so on. 
# You repeat this process and keep going until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, and 
# returns an Array that identifies which lights are on after n repetitions.

# 1. Understand the Problem
# -input
#   one integer (n = total num of switches)
# -output
#   array of integers (integer = which lights are on)
# -mental model
# => initialize the lights hash
# => return list of light numbers that are on
# => toggle every nth light in lights hash
# => run entire program for number of lights

# 2. Examples / Test Cases
# toggle(5) = [1, 4]
# toggle(10) = [1, 4, 9]

# 3. Data Structure
# -input
#   hash
# -mental model
#   hash

# 4. Algorithm
# a. initialize the lights hash
#   lights = Hash.new 
#   1.upto(n) { |number| lights[number] = "off" }
# b. return list of light numbers that are on
#   take hash, return hash where all values are "on"
#   iterate through hash. select if true: hash[number] == on?
# c. toggle every nth light in lights hash (lights, nth)
#   lights.each do |position, state|
#   if position % nth == 0
#   hash[key] = "off? "on" : "off"
# d. run entire program for number of lights (number_of_lights)

require 'pry'

def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

def lights_on(hash_of_lights)
  hash_of_lights.select do |number, value|
    hash_of_lights[number] == "on"
  end
end

def toggle_every_nth_light(lights, nth)
  lights.map do |position, state|
    if position % nth == 0
      if lights[position] == "off"
        lights[position] = "on"
      else 
        lights[position] = "off"
      end
    end
  end
end

def lighting(num)
  lights = initialize_lights(num)

  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  lights_on(lights).keys
end

p lighting(5)
p lighting(10)
