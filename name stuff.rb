x = 8
if x.odd?
  puts "Even"
else
  puts "Odd"
end

class Integer
  def even?
    self % 2 == 0
  end

  def odd?
    !even?
  end
end