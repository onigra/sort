class Sort
  def self.asc(array)
    res = []

    while !array.empty? do
      min = array.shift
      flg = nil

      array.each do |i|
        if min > i
          array << min
          flg = 1
          break
        end
      end

      if flg.nil?
        res << min
      end
    end

    res
  end

  def self.desc(array)
    res = []

    while !array.empty? do
      min = array.shift
      flg = nil

      array.each do |i|
        if min < i
          array << min
          flg = 1
          break
        end
      end

      if flg.nil?
        res << min
      end
    end

    res
  end
end
