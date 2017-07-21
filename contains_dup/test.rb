require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(false, contains_duplicate([]))
    assert_equal(false, contains_duplicate([1]))

    assert_equal(false, contains_duplicate([1,2,3]))
    assert_equal(true, contains_duplicate([1,2,1]))
  end
end
