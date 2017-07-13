require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert(1 == climb_stairs(0))
    assert(1 == climb_stairs(1))
    assert(2 == climb_stairs(2))
    assert(3 == climb_stairs(3))
  end

end
