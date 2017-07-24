require_relative "main"
require "test/unit"

include Main

class MainTest < Test::Unit::TestCase
  def test_simple()
    assert_equal(0, count_primes(0))
    assert_equal(0, count_primes(1))
    assert_equal(0, count_primes(2))
    assert_equal(3, count_primes(7))
    assert_equal(4, count_primes(10))
  end
end
