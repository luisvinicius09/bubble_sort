def bubble_sort(array)
  sorted = false
  until sorted
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
  return array
end

def bubble_sort_by(array)
  sorted = false
  until sorted
    sorted = true
    element = 0
    while element < (array.length - 1)
      if (yield array[element], array[element + 1]).to_i >= 0
        array[element], array[element + 1] = array[element + 1], array[element]
        sorted = false
      end
      element += 1
    end
  end
  return array
end
