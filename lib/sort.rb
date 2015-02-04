class Sort
  def self.asc(array)
    res = []

    until array.empty? do
      min = array.shift

      if array.map { |i| min > i }.include?(true)
        array << min
      else
        res << min
      end
    end

    res
  end

  def self.desc(array)
    res = []

    until array.empty? do
      min = array.shift

      if array.map { |i| min < i }.include?(true)
        array << min
      else
        res << min
      end
    end

    res
  end
end
