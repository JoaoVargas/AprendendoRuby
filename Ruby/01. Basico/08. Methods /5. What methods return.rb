def my_name
  "Joe Smith"
end

puts my_name #=> "Joe Smith"

def my_name
  return "Joe Smith"
end

puts my_name #=> "Joe Smith"

# ---

def even_odd(number)
  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(16) #=>  That is an even number.
puts even_odd(17) #=>  That is an odd number.

# ---

def my_name
  return "Joe Smith"
  "Jane Doe"
end

puts my_name #=> "Joe Smith"

# ---

def even_odd(number)
  unless number.is_a? Numeric
    # return "A number was not entered."
    "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=>  That is an even number.
puts even_odd("Ruby") #=>  A number was not entered.

# ---

def puts_squared(number)
  puts number * number
end

def return_squared(number)
  number * number
end
