class Temperature

  def initialize(temp)
    @temp = temp
  end

  def to_celsius
   @temp.each do |type, degree|
     if type == :f
       type = :c
       degree = (degree - 32) * 5.0/9.0
       return degree
     end
     return degree
   end
  end

  def to_fahrenheit
    @temp.each do |type, degree|
      if type == :c
        type = :f
        degree = degree*9.0/5.0 + 32
        return degree
      end
      return degree
    end
  end

  def self.in_celsius(temp)
    Temperature.new(c: temp)
  end

  def self.in_fahrenheit(temp)
    Temperature.new(f: temp)
  end
end

class Celsius < Temperature
  def initialize(value)
    @temp = {c: value}
  end
end

class Fahrenheit < Temperature
  def initialize(value)
    @temp = {f: value}
  end
end
