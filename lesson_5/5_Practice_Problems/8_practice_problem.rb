hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each_value do |array|
  array.each do |string|
    string.chars.each do |char|
        case char
        when "a"
          puts char
        when "e"
          puts char
        when "i"
          puts char
        when "o"
          puts char
        when "u"
          puts char
        end
      end
  end
end