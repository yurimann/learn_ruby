# This is where the method we're testing will go
#  (T(°F) - 32) × 5/9
#  T(°C) × 9/5 + 32

def ftoc(f)
  (f - 32) * 5.0/9.0
end

def ctof(c)
  c*9.0/5.0 + 32
end
