require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(false, is_power_of_four(-1))
    assert_equal(false, is_power_of_four(0))
    assert_equal(true, is_power_of_four(1))
    assert_equal(false, is_power_of_four(2))
    assert_equal(true, is_power_of_four(4))
  end
end
