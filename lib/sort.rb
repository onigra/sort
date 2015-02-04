class Sort
  def self.asc(array)
    res = []

    while !array.empty? do
      min = array.shift
      list = array.map { |i| min > i }

      if list.include?(true)
        array << min
      else
        res << min
      end
    end

    res
  end

  def self.desc(array)
    res = []

    while !array.empty? do
      min = array.shift
      list = array.map { |i| min < i }

      if list.include?(true)
        array << min
      else
        res << min
      end
    end

    res
  end
end
