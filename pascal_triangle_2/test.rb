require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([1], get_row(0))
    assert_equal([1,1], get_row(1))
    assert_equal([1,2,1], get_row(2))
    assert_equal([1,3,3,1], get_row(3))
    assert_equal([1,4,6,4,1], get_row(4))
  end
end
