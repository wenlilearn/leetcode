require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([], intersection([], []))
    assert_equal([1], intersection([1], [1,2,3]))
    assert_equal([2], intersection([2], [1,2,3]))
    assert_equal([1,2], intersection([1,1,3,3,2], [1,1,5,6,2]))
  end
end
