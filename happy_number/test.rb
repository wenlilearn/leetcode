require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(false, is_happy(0))
    assert_equal(true, is_happy(1))
    assert_equal(true, is_happy(19))
    assert_equal(false, is_happy(20))
  end
end
