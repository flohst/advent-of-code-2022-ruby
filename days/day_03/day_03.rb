backpacks = File.read("day_03_input.txt").split("\n")

indexes_lowercase = ('a'..'z').each_with_index.map{|l,i| [l, i+1]}.to_h
indexes_uppercase = ('A'..'Z').each_with_index.map{|l,i| [l, i+27]}.to_h
indexes = indexes_lowercase.merge(indexes_uppercase)

comparted_backpacks = backpacks.map do |content|
  content_size = content.length
  content.chars.each_slice(content_size / 2).map(&:join)
end

shared_items = comparted_backpacks.map do |content|
  first_compartment = content.first
  second_compartment = content.last

  first_compartment.chars.reduce("") do |match, char|
    if second_compartment.include?(char)
      char
    else
      match
    end
  end

end

sum_of_priorities = shared_items.reduce(0) do |sum, prio|
  sum + indexes[prio]
end

p sum_of_priorities
