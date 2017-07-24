require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(false, is_power_of_two(-16))
    assert_equal(false, is_power_of_two(0))
    assert_equal(true, is_power_of_two(1))
    assert_equal(true, is_power_of_two(2))
  end
end
