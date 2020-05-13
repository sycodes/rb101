# 1. Understand the Problem
# input
#   -a string of commands
# output
#   -integer(s)
# mental model
#   -turn the string into an array
#   -iterate each command

# 2. Data Structure
# input
#   -string
# mental model
#   -array

# 4. Algorithm
# stack = []
# register = 0
# program.split
#   if 'ADD', then register += stack.pop
#   ...

def minilang(commands)
  stack = []
  register = 0
  commands.split do |command|
    if command == "ADD"
      register += stack.pop
    elsif command == "SUB"
      register -= stack.pop
    elsif command == "MULT"
      register *= stack.pop
    elsif command == "DIV"
      register /= stack.pop
    elsif command == "MOD"
      register %= stack.pop
    elsif command == "POP"
      register = stack.pop
    elsif command == "PUSH"
      stack << register
    elsif command == "PRINT"
      puts register
    else
      register = command.to_i
    end
  end
end

minilang('6 PUSH')