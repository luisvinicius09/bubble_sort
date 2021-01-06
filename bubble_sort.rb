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


bubble_sort_by(["a", "your name", "fer", "hi"]) do |x, y| x.length - y.length end