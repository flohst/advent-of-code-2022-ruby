input = File.read("day_01_input.txt").split("\n\n").map {|elf| elf.split("\n")}
input_as_int = input.map {|elf| elf.map {|item| item.to_i()}}
total_calories = input_as_int.map {|elf| elf.reduce(:+)}
max_calories = total_calories.max()
puts max_calories

max_three_calories = total_calories.max(3)
top_three_calories = max_three_calories.sum()
puts top_three_calories
