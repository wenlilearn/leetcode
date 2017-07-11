require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert([] == remove_element([], nil))
    assert([1,2,3] == remove_element([1,2,3], 4))
    assert([0] == remove_element([0,1], 1))
    assert([2,2] == remove_element([3,2,2,3], 3))
  end
end
