require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal([], generate(0))
    assert_equal([[1]], generate(1))
    assert_equal([[1], [1,1]], generate(2))
    assert_equal([[1], [1,1], [1,2,1]], generate(3))
  end
end
