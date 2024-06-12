require "pry-byebug"

module RomanNumerals
  class << self
    NUMERALS = [
      [1000, "M"],
      [900, "CM"],
      [500, "D"],
      [400, "CD"],
      [100, "C"],
      [90, "XC"],
      [50, "L"],
      [40, "XL"],
      [10, "X"],
      [9, "IX"],
      [5, "V"],
      [4, "IV"],
      [1, "I"]
    ]

    def iterative_to_roman(number)
      roman = ""

      NUMERALS.each do |(decimal, numeral)|
        while number >= decimal
          roman += numeral
          number -= decimal
        end
      end
    end

    def recursive_to_roman(number)
      NUMERALS.each do |(decimal, roman)|
        return roman + recursive_to_roman(number - decimal) if number >= decimal
      end

      ""
    end

    alias to_roman iterative_to_roman
  end
end
