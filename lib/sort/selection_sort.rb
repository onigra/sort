class SelectionSort
  def self.asc(array)
    array.size.times do |i|
      min = i

      i.upto (array.size - 1) do |idx|
        if array[idx] < array[min]
          min = idx
        end
      end

      array[i], array[min] = array[min], array[i]
    end

    array
  end

  def self.desc(array)
    array.size.times do |i|
      min = i

      i.upto (array.size - 1) do |idx|
        if array[idx] > array[min]
          min = idx
        end
      end

      array[i], array[min] = array[min], array[i]
    end

    array
  end
end
