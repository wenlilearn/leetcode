require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(5, count_segments("Hello, my name is John"))
    assert_equal(4, count_segments("This is a test"))
  end
end
