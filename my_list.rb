require_relative './enumerables'

class MyList
  include MyEnumerable
  def initialize(*arg)
    @list = arg
  end
end

list = MyList.new(1, 2, 3, 4)

p(list.all? { |e| e < 5 })
p(list.all? { |e| e > 5 })

p(list.any? { |e| e == 2 })
p(list.any? { |e| e == 5 })

p(list.filter(&:even?))
