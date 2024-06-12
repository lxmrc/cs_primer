require 'minitest/autorun'
require 'minitest/pride'
require_relative '02_roman_numerals'

class RomanNumeralsTest < Minitest::Test
  def test_1
    assert_equal 'I', RomanNumerals.to_roman(1)
  end

  def test_2
    assert_equal 'II', RomanNumerals.to_roman(2)
  end

  def test_3
    assert_equal 'III', RomanNumerals.to_roman(3)
  end

  def test_4
    assert_equal 'IV', RomanNumerals.to_roman(4)
  end

  def test_5
    assert_equal 'V', RomanNumerals.to_roman(5)
  end

  def test_6
    assert_equal 'VI', RomanNumerals.to_roman(6)
  end

  def test_9
    assert_equal 'IX', RomanNumerals.to_roman(9)
  end

  def test_27
    assert_equal 'XXVII', RomanNumerals.to_roman(27)
  end

  def test_39
    assert_equal 'XXXIX', RomanNumerals.to_roman(39)
  end

  def test_48
    assert_equal 'XLVIII', RomanNumerals.to_roman(48)
  end

  def test_59
    assert_equal 'LIX', RomanNumerals.to_roman(59)
  end

  def test_93
    assert_equal 'XCIII', RomanNumerals.to_roman(93)
  end

  def test_141
    assert_equal 'CXLI', RomanNumerals.to_roman(141)
  end

  def test_163
    assert_equal 'CLXIII', RomanNumerals.to_roman(163)
  end

  def test_246
    assert_equal 'CCXLVI', RomanNumerals.to_roman(246)
  end

  def test_402
    assert_equal 'CDII', RomanNumerals.to_roman(402)
  end

  def test_575
    assert_equal 'DLXXV', RomanNumerals.to_roman(575)
  end

  def test_789
    assert_equal 'DCCLXXXIX', RomanNumerals.to_roman(789)
  end

  def test_911
    assert_equal 'CMXI', RomanNumerals.to_roman(911)
  end

  def test_1024
    assert_equal 'MXXIV', RomanNumerals.to_roman(1024)
  end

  def test_2421
    assert_equal 'MMCDXXI', RomanNumerals.to_roman(2421)
  end

  def test_3000
    assert_equal 'MMM', RomanNumerals.to_roman(3000)
  end

  def test_3999
    assert_equal 'MMMCMXCIX', RomanNumerals.to_roman(3999)
  end
end
