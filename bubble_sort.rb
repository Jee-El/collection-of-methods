def bubble_sort(arr)
  swapped = true
  unsorted_length = arr.length
  while swapped
    swapped = false
    i = 0
    while i + 1 < unsorted_length
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
      i += 1
    end
    unsorted_length -= 1
  end
  arr
end

bubble_sort([4, 3, 78, 2, 0, 2]) # => [0, 2, 2, 3, 4, 78]
