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
    control(array, curr_num, next_num)
  end
end


def switch_arr_index(array,num1,num2)
  num1_index = array.find_index(num1)
  num2_index = array.find_index(num2)
  array[num1_index] = num2 
  array[num2_index] = num1
  array
end

def control(array,num1,num2)
  if num1 < num2 
    p 1
    next
  elsif num1 == num2
    p 2
    next
  elsif num1 > num2
    return switch_arr_index(array,num1,num2)
  end
end


# p control(array,7,2)
# p switch_arr_index(array,4,7)
#p bubble_sort(array)
#p sort_array_item(array)