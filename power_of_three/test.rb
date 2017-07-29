require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(false, is_power_of_three(-1))
    assert_equal(false, is_power_of_three(0))
    assert_equal(true, is_power_of_three(1))
    assert_equal(false, is_power_of_three(2))
    assert_equal(true, is_power_of_three(3))
    assert_equal(false, is_power_of_three(6))
    assert_equal(true, is_power_of_three(243))
  end
end
