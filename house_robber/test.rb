require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, rob([]))
    assert_equal(2, rob([1,2]))
    assert_equal(4, rob([2,1,1,2]))
    assert_equal(3, rob([1,2,1,1]))
    assert_equal(3365, rob([183,219,57,193,94,233,202,154,65,240,97,234,100,249,186,66,90,238,168,128,177,235,50,81,185,165,217,207,88,80,112,78,135,62,228,247,211]))
  end
end
