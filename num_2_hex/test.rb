require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    # assert_equal("0", to_hex(0))
    # assert_equal("ffffffff", to_hex(-1))
    assert_equal("a", to_hex(10))
  end
end
