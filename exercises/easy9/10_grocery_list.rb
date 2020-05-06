def buy_fruit(fruits)
  grocery_list = []

  fruits.map do |fruit|
    fruit[1].times do
      grocery_list << fruit[0]
    end
  end
  grocery_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]