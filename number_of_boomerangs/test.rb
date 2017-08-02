require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(2, number_of_boomerangs([[0,0],[1,0],[2,0]]))
  end
end
