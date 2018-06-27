require 'pry'

def hello(array)
  i = 0
  while i < array.length
  binding.pry
    yield(array[i])
    i += 1
  end
end

binding.pry
hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }


# Let's tell our method to return a new array of strings that contain the above greetings, instead of simply `puts`-ing out our greetings. 

# We can capture the return value of the code that is executed when `yield` passes a value to a block. 
## Capturing the Return Value of Using Yield

# Make the following change to the code block that we are calling with our `#hello` method in `lib/practicing_returns.rb`:

# ```ruby
# hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
# ```

# Now, the return value of each execution of the code in our block will be a string: `"Hi, #{name}"`. 

# Let's take a look at capturing the return value of `yielding` to this block. 

# Place a `binding.pry`:

# ```ruby
# def hello(array)
#   i = 0
#   while i < array.length
#     binding.pry
#     yield(array[i])
#     i += 1
#   end
# end
# ```

# Now, run the file with `ruby lib/practicing_returns.rb`. You should be dropped right into your binding. Let's manually execute our `yield` so that we can see the return value. In the Pry console in your terminal:

# ```ruby
# yield(array[i])
# ```

# This returns:

# ```bash
# "Hi, Tim"
# ```