require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(16, island_perimeter([[0,1,0,0], [1,1,1,0], [0,1,0,0], [1,1,0,0]]))
    assert_equal(8, island_perimeter([[1,1],[1,1]]))
  end
end
