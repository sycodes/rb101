def greetings(full_name, title_occupation)
  puts "Hello, #{full_name.join(" ")}! Nice to have a #{title_occupation[:title]} #{title_occupation[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })