module Enumerable
  def my_each
    return self unless block_given?

    for i in self
      yield(i)
    end
  end
end

(1..5).my_each do |element|
  puts element
end