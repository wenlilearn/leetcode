require_relative "reverse_integer"
require "test/unit"

class MainTest < Test::Unit::TestCase
  def test_simple
    assert_equal(0, Main.new.reverse(0))
    assert_equal(-321, Main.new.reverse(-123))
  end
end
