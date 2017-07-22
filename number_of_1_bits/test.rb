require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, hamming_weight(0))
    assert_equal(1, hamming_weight(1))
    assert_equal(2, hamming_weight(3))

    assert_equal(3, hamming_weight(11))
  end
end
