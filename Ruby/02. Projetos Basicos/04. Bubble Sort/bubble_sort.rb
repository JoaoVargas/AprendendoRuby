def bubble_sort(inputArray = [])
  if inputArray.size < 2
    return inputArray
  end

  def sort(num1, num2)
    return (num2 - num1) < 0
  end

  aux = 0

  (inputArray.length - 1).times do |height|
    height.downto(0) do |width|
      if sort(inputArray[width], inputArray[width+1])
        aux = inputArray[width]
        inputArray[width] = inputArray[width+1]
        inputArray[width+1] = aux
      end
    end
  end

  return inputArray
end

print(bubble_sort([4,3,78,2,0,2,5,2,6,9,1,3,5,7,0,3,1,5,7,3,120301023123,4,5,6,8,3]))
