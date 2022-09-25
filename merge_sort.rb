def merge_sort(unsorted_arr)
  return unsorted_arr if unsorted_arr.length == 1

  middle = unsorted_arr.length / 2

  first_half = merge_sort(unsorted_arr[0...middle])
  second_half = merge_sort(unsorted_arr[middle..])

  sorted = []
  i = 0
  j = 0
  loop do
    first_half[i] ||= -Float::INFINITY
    if first_half[i] > second_half[j]
      sorted.push(second_half[j])
      j += 1
    else
      sorted.push(first_half[i])
      i += 1
    end
    break sorted.push(*second_half[j..]) if i == first_half.length
    break sorted.push(*first_half[i..]) if j == second_half.length
  end
  sorted
end

merge_sort([4, 3, 78, 2, 0, 2]) # => [0, 2, 2, 3, 4, 78]
