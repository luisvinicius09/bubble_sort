def bubble_sort array
if array[0].class == Integer
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
  elsif array[0].class == String
    sorted = false
    until sorted do
      sorted = true
      element = 0
      while element < (array.length - 1)
        if (yield array[element] ,array[element + 1]).to_i >=0
          array[element], array[element + 1] = array[element + 1], array[element]
          sorted = false
        end
        element += 1 
      end
    end
    print array
end
end
bubble_sort([[2,0,500,1,0,0,2,500]) do |x,y| (x.length - y.length) end