def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# Line 2 mutates the object ['y', 'o', 'u']. Its object id is 60.
# name's object id is 80.
# Therefore, mutate the name object directly to get "YOU".