def uuid
  characters = []
  (0..9).each { |num| characters << num.to_s }
  ('a'..'z').each { |letter| characters << letter }

  sections = [8, 4, 4, 4, 12]
  uuid = ''
  sections.each_with_index do |num, indx|
    num.times { uuid += characters.sample }
    uuid += "-" unless indx >= sections.size - 1
  end

  uuid
end