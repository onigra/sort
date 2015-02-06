class LinearSearch
  def self.run(list, search_number)
    hit_index = nil

    list.each_with_index do |item, i|
      if item == search_number
        hit_index = i
        break
      end
    end

    if hit_index.nil?
      "#{search_number}は見つかりませんでした"
    else
      "#{search_number}が#{hit_index}番目に見つかりました"
    end
  end
end
