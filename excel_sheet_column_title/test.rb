require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal("", convert_to_title(0))
    assert_equal("A", convert_to_title(1))
    assert_equal("Z", convert_to_title(26))
    assert_equal("AA", convert_to_title(27))
    assert_equal("AB", convert_to_title(28))
    assert_equal("AZ", convert_to_title(52))
    assert_equal("BA", convert_to_title(53))
  end
end
