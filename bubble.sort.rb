def bubble_sort(unsorted_array)
  iterations = unsorted_array.length - 1
  while iterations >= 0
    unsorted_array.each_with_index do |first_number, first_index|
      if first_index == unsorted_array.length - 1
        break
      end

      if first_number > unsorted_array[first_index+1]
        temp = unsorted_array[first_index + 1]
        unsorted_array[first_index + 1] = first_number
        unsorted_array[first_index] = temp
      else
        first_index += 1
        first_number = unsorted_array[first_index]
      end
    end
    iterations -= 1
  end
  unsorted_array
end

puts bubble_sort([5, 4, 2, 7, 8, 99, 33, 654, 8, 1, 2])