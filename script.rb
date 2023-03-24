array = [4,7,2,3,4,1]




def bubble_sort(array)
  input_array = array
  until input_array[0] == array.min()
    input_array = sort_array_item(input_array)
    p input_array
  end
  return input_array
end

def sort_array_item(array)
  array.each do |num|
    curr_num = array.find_index(num)
    next_num = curr_num + 1
    if array[curr_num] > array[next_num]
      array[curr_num], array[next_num] = array[next_num], array[curr_num]
      return array
    else 
      next
    end
  end
end



p bubble_sort(array)
#p sort_array_item(array)