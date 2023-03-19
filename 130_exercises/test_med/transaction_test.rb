require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'
# require 'stringio'

class TransactionTest < MiniTest::Test
  def setup 
    # input = StringIO.new("5\n")
    @transaction = Transaction.new(5)
    @cash_register = CashRegister.new(10)
  end


  def test_prompt_payment
    # transasction = Transaction.new(5)
    input = StringIO.new('5\n')
    output = StringIO.new
    @transaction.prompt_for_payment(input: input, output: output)
    assert_equal(5, @transaction.amount_paid)
  
  end

  # def test_prompt_for_payment
  #   transaction = Transaction.new(30)
  #   input = StringIO.new('30\n')
  #   transaction.prompt_for_payment(input: input)
  #   assert_equal 30, transaction.amount_paid
  # end

=begin     
The goal is for the test, to not output the call for puts
from the `Tranaction#prompt_for_payment` method.
It involoves using `StringIO` and creating a "mock object" to utilize the output
We need to "consume" the output of puts. 
=end
end

# What exactly are we testing? The test for prompt payment, needs to fail
# if the input is invalid, if the amount is not enough. 2 assertions.
# How do I pass in the amount
# I was putting the semi colon on the wrong side of `input`. What is this syntax?
# it is not a symbol. I saw this in the 37 signal blog post too. `input:`
# Is it the same as the `hash` syntax?
# what about needing to `require stringio` ??
