require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(["1", "2", "Fizz"], fizz_buzz(3))
    assert_equal(["1", "2", "Fizz", "4", "Buzz"], fizz_buzz(5))
  end
end
