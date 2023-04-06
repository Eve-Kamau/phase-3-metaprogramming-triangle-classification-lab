class Triangle
  # write code here

  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene

    if equilateral >= (isosceles + scalene) || isosceles >= (equilateral + scalene) || scalene >= (equilateral + isosceles)
      raise TriangleError
    end
  
    if equilateral <= 0 || isosceles<= 0 || scalene <= 0
      raise TriangleError
    end
  
    if equilateral == nil || isosceles == nil ||scalene == nil
      raise TriangleError
    end
  end   

   def kind
    if equilateral == isosceles && equilateral == scalene
      :equilateral
    elsif equilateral == isosceles || isosceles == scalene || scalene == equilateral
      :isosceles
    elsif equilateral != isosceles && equilateral != scalene && isosceles != scalene
      :scalene
    else
      raise TriangleError
    end
  end

   class TriangleError < StandardError
    def errormsg
      "Error: Invalid triangle!"
    end 
  end 

end
