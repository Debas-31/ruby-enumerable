module MyEnumerable
  def all?(&block)
    return 'No block given' unless block_given?

    @list.each do |value|
      return false unless block.call(value)
    end
    true
  end

  def any?(&block)
    return 'No block given' unless block_given?

    @list.each do |value|
      return true if block.call(value)
    end
    false
  end

  def filter(&block)
    return 'No block given' unless block_given?

    array = []
    @list.each do |value|
      array.push(value) if block.call(value)
    end
    array
  end
end
