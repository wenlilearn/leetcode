require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(nil, single_number([]))
    assert_equal(1, single_number([1]))
    assert_equal(nil, single_number([1, 1]))
    assert_equal(1, single_number([1,2,2]))
  end
end
