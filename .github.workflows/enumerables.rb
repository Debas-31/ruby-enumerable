module MyEnumerable
  def all?(&block)
    result = false
    @list.each do |item|
      unless block.call(item)
        result = false
        break
      end
      result = true
    end
    result
  end
end
