require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(["0:01","0:02","0:04","0:08","0:16","0:32","1:00","2:00","4:00","8:00"], read_binary_watch(1))
  end
end
