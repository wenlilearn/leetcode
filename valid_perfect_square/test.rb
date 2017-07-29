require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(false, is_perfect_square(-1))
    assert_equal(true, is_perfect_square(0))
    assert_equal(true, is_perfect_square(1))
    assert_equal(false, is_perfect_square(2))
    assert_equal(true, is_perfect_square(4))
    assert_equal(true, is_perfect_square(9))
  end
end
