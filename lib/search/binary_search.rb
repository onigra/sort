class BinarySearch
  def self.run(list, search_number)
    tmp = list
    i = 0

    while tmp.class == Array do
      i += 1

      if tmp.size == 1
        tmp = nil
      elsif tmp.sort[tmp.size / 2] == search_number
        tmp = search_number
      elsif tmp.sort[tmp.size / 2] > search_number
        tmp = tmp.sort.each_slice(tmp.size / 2).to_a.first
      else
        tmp = tmp.sort.each_slice(tmp.size / 2).to_a.last
      end
    end

    if tmp.nil?
      "#{search_number}は見つかりませんでした"
    else
      "#{search_number}が#{i}番目に見つかりました"
    end
  end
end
