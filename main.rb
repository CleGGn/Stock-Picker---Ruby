class Test

  # Implement a method #stock_picker that takes in an array of stock prices, one 
  # for each hypothetical day. It should return a pair of days representing the best 
  # day to buy and the best day to sell. Days start at 0.

  def stock_picker(arr)
    # For each value in the array, substract the current value to each other coming after to get the highest sum
    good_couple = []
    array_length = arr.length
    sum = 0
    arr.each_with_index do |value_x, index_x| 
      # if we're not on the last value
      if index_x != array_length - 1
        arr.each_with_index do |value_y, index_y|
          # we only check the index after the current one
          if index_y > index_x
            if (value_y - value_x) > sum
              sum = (value_y - value_x)
              good_couple = [index_x, index_y]
            end
          end
        end
      end
    end
  good_couple
  end

end 

test = Test.new
res = test.stock_picker([17,3,6,9,15,8,6,1,10])

puts res

