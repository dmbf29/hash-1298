cart = {}
puts "What item to you want?"
item = gets.chomp.to_sym
puts "How many?"
quantity = gets.chomp.to_i

cart[item] = quantity

p cart
