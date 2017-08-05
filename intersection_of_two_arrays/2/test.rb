require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([2], intersection([1,2,2,1], [2,2]))
    assert_equal([2,3], intersection([1,2,3], [2,3]))
    assert_equal([3,1], intersection([3,1,2], [3,1]))
  end
end
