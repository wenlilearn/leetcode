require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([1,1], construct_rectangle(1))
    assert_equal([5,1], construct_rectangle(5))
    assert_equal([4,3], construct_rectangle(12))
  end
end
