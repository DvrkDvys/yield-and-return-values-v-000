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



# In this method, we are using a `while` loop to iterate over an array and yielding each member of the array in turn to a block. 

# We would call our method like this:

# ```ruby
# hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
# ```

# Which would output to the terminal:

# ```bash
# # > Hi, Tim
# # > Hi, Tom
# # > Hi, Jim
# ```

# You can run this file in your terminal with `ruby lib/practicing_returns.rb` to see for yourself. 

# What is the return value of this method call, though? 

# Let's find out! Notice that we have required Pry for you at the top of `lib/practicing_returns.rb` Go ahead and place a `binding.pry` on line 11, just before we call our `#hello` method. 

# Run the file with `ruby lib/practicing_returns.rb` in your terminal. We should be dropped right into our binding. 

# Inside the Pry console in your terminal, manually invoke the method by copying and pasting the following and hitting `enter`:

# ```
# ruby
# hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
# ```

# You should see the following:

# ```bash
# # > Hi, Tim
# # > Hi, Tom
# # > Hi, Jim
# => nil
# ```

# Notice that our method `puts`-ed out the code we expected and **returned `nil`**. Why is that?

# That is because the return value of a `while` loop is always `nil`. If we want our method to return something else, we have to tell it to do so. 

# Let's tell our method to return a new array of strings that contain the above greetings, instead of simply `puts`-ing out our greetings. 

# We can capture the return value of the code that is executed when `yield` passes a value to a block. 