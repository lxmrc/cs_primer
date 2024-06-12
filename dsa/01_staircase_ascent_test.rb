require 'minitest/autorun'
require_relative '01_staircase_ascent'

class StaircaseAscentTest < Minitest::Test
  def test_staircase_ascent
    assert_equal 1, staircase_ascent(1)
    assert_equal 2, staircase_ascent(2)
    assert_equal 4, staircase_ascent(3)
    assert_equal 7, staircase_ascent(4)
    assert_equal 13, staircase_ascent(5)
    assert_equal 24, staircase_ascent(6)
    assert_equal 44, staircase_ascent(7)
    assert_equal 81, staircase_ascent(8)
    assert_equal 149, staircase_ascent(9)
    assert_equal 274, staircase_ascent(10)
  end
end
