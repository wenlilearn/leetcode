require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, reverse_bits(0))
    assert_equal(2147483648, reverse_bits(1))

    assert_equal(43261596, reverse_bits(964176192))
  end
end
