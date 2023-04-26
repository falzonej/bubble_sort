require 'pry'

array = [4,7,2,7,1,5]


def bubble_sort(array)
  output_array = array
  until array[0] == array.min()  do
    output_array = sort_array(array)
  end
  output_array
end


def sort_array(array)
  array.each do |num|
    curr_num = array.find_index(num)
    next_num = curr_num + 1
    control(array, array[curr_num], array[next_num])
# binding.pry
  end
end

def control(array,num1,num2)
binding.pry
  if num2 == nil
    return
  elsif num1 < num2 
    return
  elsif num1 == num2
    switch_arr_index(array,num1,num2)
  elsif num1 > num2
    switch_arr_index(array,num1,num2) 
  end
end

def switch_arr_index(array,num1,num2)
  num1_index = array.find_index(num1)
  num2_index = array.find_index(num2)
  array[num1_index] = num2 
  array[num2_index] = num1
  array
end



#p control(array,7,2)
#p switch_arr_index(array,4,7)
#p sort_array(array)
p bubble_sort(array)