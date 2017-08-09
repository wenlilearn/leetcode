require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(6, search([4,5,6,7,0,1,2], 2))
    assert_equal(0, search([4,5,6,7,0,1,2], 4))
    assert_equal(2, search([4,5,6,7,0,1,2], 6))
  end
end
