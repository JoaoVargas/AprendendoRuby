require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")

# From: /home/joaov/Projetos/AprendendoRuby/Ruby/Aulas/9. Debugging/2. Debugging with Pry-byebug.rb:9 Object#isogram?:

#      3: def isogram?(string)
#      4:   original_length = string.length
#      5:   string_array = string.downcase.split
#      6:
#      7:   binding.pry
#      8:
#  =>  9:   unique_length = string_array.uniq.length
#     10:   original_length == unique_length
#     11: end
