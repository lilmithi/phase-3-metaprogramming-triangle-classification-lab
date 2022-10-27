class Triangle
  # write code here
  attr_accessor :length1,:length2,:length3
def initialize(length1,length2,length3)
  @length1=length1
  @length2=length2
  @length3=length3
end

def kind
  if [@length1,@length2,@length3].any? {|length| length<=0}
    raise TriangleError
  end
  sides=[@length1,@length2,@length3].sort

  unless sides[0]+sides[1] > sides[2]
      raise TriangleError
  end

    case [@length1,@length2,@length3].uniq.size
    when 1 then :equilateral
    when 2 then :isosceles
    else :scalene
    end
  
end

class TriangleError < StandardError
# def message
#   "Invalid Entries!"
# end
end

end
