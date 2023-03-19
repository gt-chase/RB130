# def some
#   yield 
# end

# bloc = proc { p "hi" } # do not alter

# some(&bloc)

# def call_me(some_code)
#   some_code.call
# end

# name = "Robert"
# chunk_of_code = Proc.new {puts "hi #{name}"}
# name = "Griffin III"        # re-assign name after Proc initialization

# call_me(chunk_of_code)


# Circular method structures that are confusing:
# def my_method(block)
#   str = "I'm inside the method"
#   puts str
#   block.call
# end

# str = "I'm a string outside a method"
# my_proc = Proc.new { puts str }
# my_proc.call
# str = "The answer to life is 42."
# my_method(my_proc)

# writing methods that take implicit blocks
# and then altering methods that utilize procs

def test(&block) # handles the block by assigning the block as a simple proc to the method parameter `block`
  puts "What's &block? #{block}!"
  time_it(block)
  puts yield # the block used when calling `test` is also still available through `yield`
end

def time_it(input) 
  time_before = Time.now
  input.call                       # changed to execute the explict block
  time_after= Time.now
  
  puts "It took #{time_after - time_before} seconds."
end

# test {sleep(3)} # => Executes all three lines of the `test` method


test { "hello world" } 
# => What's &block? #<Proc:0x00000001360eb758 proc_block.rb:53>!
# => It took 1.0e-06 seconds.
# => hello world
