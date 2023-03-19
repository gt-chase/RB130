# Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc # prints the proc object details. Does not execute the block
# puts my_proc.class # prints the class, which is Proc
# my_proc.call # no argument given. Prints the string, and the string interpolation of `thing` is nil which is an empty space
# my_proc.call('cat') # smooth, just executes the block

# # Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda # prints details of the objectseems to be a proc object with (lambda) at the end
# puts my_second_lambda # same as above. Unique object
# puts my_lambda.class # Its a Proc?
# my_lambda.call('dog')
# # my_lambda.call # complains about wrong number of arguments. Strict arity
# # my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." } # issue with initilization. 

# # Group 3
# def block_method_1(animal)
#   yield
# end

# block_method_1('seal') { |seal| puts "This is a #{seal}."} # defined without the ability to take parameters. Given parameters are ignored
# block_method_1('seal') #LocalJumpError
# Can't skip block if only `yield` is in the method def
# Block ignore 'extra' parameters passed into the block.

# Group 4
def block_method_2(animal)
  yield(animal)
end

# block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
# Method yields to the block with a parameter
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
# method yields to the block and ignores extra parameters. 
block_method_2('turtle') { puts "This is a #{animal}."}
#  method yields to the block but `animal` is not defined so NameError occurs