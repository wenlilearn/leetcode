require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, missing_number([]))
    assert_equal(1, missing_number([0]))
    assert_equal(2, missing_number([0,1,3]))
    assert_equal(0, missing_number([1,2,3]))
    assert_equal(5, missing_number([0,1,2,3,4]))
    assert_equal(1, missing_number([0,2]))
  end
end
