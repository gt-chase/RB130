

def zip(arr1, arr2)
  result = []
  0.upto(arr1.size - 1) do |num|
    result << [arr1[num], arr2[num]]
  end
  result
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]