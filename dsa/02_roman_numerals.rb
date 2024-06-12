require "pry-byebug"

module RomanNumerals
  # def self.to_roman(n)
  #   roman = ""
  #   remaining = n

  #   if remaining >= 1000
  #     roman += "M" * (remaining / 1000)
  #     remaining = remaining % 1000
  #   end

  #   if remaining >= 900
  #     roman += "CM"
  #     remaining -= 900
  #   end

  #   if remaining >= 500
  #     roman += "D"
  #     remaining -= 500
  #   end

  #   if remaining >= 400
  #     roman += "CD"
  #     remaining -= 400
  #   end

  #   if remaining >= 100
  #     roman += "C" * (remaining / 100)
  #     remaining = remaining % 100
  #   end

  #   if remaining >= 90
  #     roman += "XC"
  #     remaining -= 90
  #   end

  #   if remaining >= 50
  #     roman += "L"
  #     remaining -= 50
  #   end

  #   if remaining >= 40
  #     roman += "XL"
  #     remaining -= 40
  #   end
  #   
  #   if remaining >= 10
  #     roman += "X" * (remaining / 10)
  #     remaining = remaining % 10
  #   end

  #   if remaining == 9
  #     roman += "IX"
  #     remaining -= 9
  #   end

  #   if remaining >= 5
  #     roman += "V"
  #     remaining -= 5
  #   end

  #   if remaining == 4
  #     roman += "IV"
  #     remaining -= 4
  #   end

  #   if remaining > 0
  #     roman += "I" * remaining
  #     remaining -= n
  #   end

  #   roman
  # end

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

  def self.to_roman(number)
    NUMERALS.each do |(decimal, roman)|
      return roman + to_roman(number - decimal) if number >= decimal
    end

    ""
  end
end
