def bubble_sort(array)
  no_swap_was_perfomed = false
  
  until no_swap_was_perfomed
    no_swap_was_perfomed = true
    array.each_with_index do |element, idx|
      
      next_element = array[idx + 1]
      unless next_element == nil
        if element > next_element
          
          array[idx] = next_element
          array[idx + 1] = element
          no_swap_was_perfomed = false
          p array
        end
      end
    end
  end

  array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([1,4,5,3,2])
p bubble_sort([1,-4,5,-3,2,0])

