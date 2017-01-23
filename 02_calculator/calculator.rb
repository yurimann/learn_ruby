def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(x)
  if x == []
    x = 0
  else
    x.inject(:+)
  end

end
