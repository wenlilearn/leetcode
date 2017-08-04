require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(2, find_complement(5))
    assert_equal(0, find_complement(1))
    assert_equal(7, find_complement(8))
  end
end
