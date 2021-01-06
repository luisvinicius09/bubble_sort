def bubble_sort array
  sorted = false
  until sorted do
    sorted = true
    element = 0
    while element < (array.length - 1)
      if array[element] > array[element + 1]
        array[element], array[element + 1] = array[element + 1], array[element]
        sorted = false
      end
      element += 1 
    end
  end
  print array
end

bubble_sort([75, 2, 4, 15, 65])