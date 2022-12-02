matches = File.read("day_02_input.txt").split("\n").map {|match| match.split(" ")}

# Task 1

# A => Rock
# B => Paper
# C => Scissor
choice_point_map = {
  :X => 1,
  :Y => 2,
  :Z => 3,
}

# A => Rock
# B => Paper
# C => Scissor
# X => Rock
# Y => Paper
# Z => Scissor
result_point_map = {
  :X => {
    :A => 3,
    :B => 0,
    :C => 6
  },
  :Y => {
    :A => 6,
    :B => 3,
    :C => 0
  },
  :Z => {
    :A => 0,
    :B => 6,
    :C => 3
  },
}

points_by_choice = 0
points_by_result = 0

matches.each do |match|
  opponent_choice = match.first
  own_choice = match.last
  points_by_choice += choice_point_map[own_choice.to_sym]
  points_by_result += result_point_map[own_choice.to_sym][opponent_choice.to_sym]
end

total_points = points_by_choice + points_by_result
p total_points

# Task 2

choice_point_map = {
  :X => 0,
  :Y => 3,
  :Z => 6,
}

result_point_map = {
  :X => {
    :A => 3,
    :B => 1,
    :C => 2
  },
  :Y => {
    :A => 1,
    :B => 2,
    :C => 3
  },
  :Z => {
    :A => 2,
    :B => 3,
    :C => 1
  },
}

points_by_choice = 0
points_by_result = 0

matches.each do |match|
  opponent_choice = match.first
  own_choice = match.last
  points_by_choice += choice_point_map[own_choice.to_sym]
  points_by_result += result_point_map[own_choice.to_sym][opponent_choice.to_sym]
end

total_points = points_by_choice + points_by_result
p total_points
