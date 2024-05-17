def stock_picker(inputArray = [])
  biggestProfit = 0
  bestTransaction = []

  inputArray.each_with_index do |value, index|
    index.upto(inputArray.length - 1) do |futureValueIndex|
      if value < inputArray[futureValueIndex]
        if (inputArray[futureValueIndex] - value) > biggestProfit
          bestTransaction = [index, futureValueIndex]
          biggestProfit = inputArray[futureValueIndex] - value
        end
      end
    end
  end

  return bestTransaction
end

print(stock_picker([17,3,6,9,15,8,6,1,10]))

