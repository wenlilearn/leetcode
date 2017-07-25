require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, add_digits(0))
    assert_equal(1, add_digits(1))
    assert_equal(1, add_digits(10))
    assert_equal(2, add_digits(38))
  end
end
