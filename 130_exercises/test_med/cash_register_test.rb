require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup 
    @transaction = Transaction.new(5)
    @cash_register = CashRegister.new(10)
  end
  
  def test_accept_money
    @transaction.amount_paid = 5
    assert_equal(10, @cash_register.total_money )
    @cash_register.accept_money(@transaction)
    assert_equal(15, @cash_register.total_money)
  end

  def test_change
    @transaction.amount_paid = 10
    assert_equal(5, @cash_register.change(@transaction))
  end

  def test_give_receipt
    assert_output("You've paid $#{@transaction.item_cost}.\n") { @cash_register.give_receipt(@transaction) }
  end
    
end