require 'benchmark'
require_relative '02_roman_numerals'

Benchmark.bmbm do |x|
  x.report("iterative") do
    1000.times { RomanNumerals.iterative_to_roman(3888) }
  end

  x.report("recursive") do
    1000.times { RomanNumerals.recursive_to_roman(3888) }
  end
end
