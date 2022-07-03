def bubble_sort(arr)
  swaped = -1
  until swaped == 0
    swaped = 0
    i = 0
    unsorted_length = arr.length
    while i + 1 < unsorted_length
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swaped = 1
      end
      i += 1
    end
    unsorted_length -= 1
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2]) # => [0, 2, 2, 3, 4, 78]
