my_numbers = [5, 6, 7, 8]
sum = 0

my_numbers.each { |number| sum += number }

sum
#=> 26

# ---

my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }
#=> 26

# Iteration 0: sum = 5 + 6 = 11
# Iteration 1: sum = 11 + 7 = 18
# Iteration 2: sum = 18 + 8 = 26

# ---

my_numbers = [5, 6, 7, 8]

my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026

# ---

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}


# Iteration 0:
#   result = {}
#   Remember, this hash already has default values of 0, so result["Bob's Dirty Burger Shack"] == 0 and result["St. Mark's Bistro"] == 0
# Iteration 1:
#   The method runs result["Bob's Dirty Burger Shack"] += 1
#   result = {“Bob’s Dirty Burger Shack” => 1}
# Iteration 2:
#   The method runs result["St. Mark's Bistro"] += 1
#   result = {“Bob’s Dirty Burger Shack” => 1, “St. Mark’s Bistro” => 1}
# Iteration 3:
#   The method runs result["Bob's Dirty Burger Shack"] += 1
#   result = {“Bob’s Dirty Burger Shack” => 2, “St. Mark’s Bistro” => 1}
