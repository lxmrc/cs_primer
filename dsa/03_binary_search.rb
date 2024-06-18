require 'pry-byebug'

module BinarySearch
  class << self
    def search(array, target)
      low = 0
      high = array.length - 1

      while low <= high
        mid = (low + high)
        guess = array[mid]

        if guess == target
          return mid
        elsif guess > target
          high = mid - 1
        elsif guess < target
          low = mid + 1
        end
      end

      -1
    end
  end
end
