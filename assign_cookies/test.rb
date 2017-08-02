require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(1, find_content_children([1,2,3],[1,1]))
    assert_equal(2, find_content_children([1,2], [1,2,3]))
    assert_equal(1, find_content_children([1,2,3], [3]))
  end
end
