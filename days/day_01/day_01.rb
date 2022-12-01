input_as_int = File.read("day_01_input.txt").split("\n\n").map {|elf| elf.split("\n").map {|item| item.to_i()}}
total_calories = input_as_int.map {|elf| elf.sum()}
max_calories = total_calories.max()
puts max_calories

top_three_calories = total_calories.max(3).sum()
puts top_three_calories
