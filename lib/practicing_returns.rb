require 'pry'

def hello(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }

# Notice that our method `puts`-ed out the code we expected and **returned `nil`**. Why is that?

# That is because the return value of a `while` loop is always `nil`. If we want our method to return something else, we have to tell it to do so. 

# Let's tell our method to return a new array of strings that contain the above greetings, instead of simply `puts`-ing out our greetings. 

# We can capture the return value of the code that is executed when `yield` passes a value to a block. 