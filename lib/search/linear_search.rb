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
      hit_message search_number
    else
      unhit_message(search_number, hit_index)
    end
  end

  private

  def self.hit_message(search_number)
    "#{search_number}は見つかりませんでした"
  end

  def self.unhit_message(search_number, hit_index)
    "#{search_number}が#{hit_index}番目に見つかりました"
  end
end
