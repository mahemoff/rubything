require 'memo_wise'

module GeometryCalculator

  prepend MemoWise

  def calc_square_area(width)
    print('.')
    width * width
  end

  def calc_circle_area(radius)
    Math::PI * radius * radius
  end

end

class RiceField
  include GeometryCalculator
  attr_accessor :width
  def area
    calc_square_area(width)
  end
end

rice_field = RiceField.new
rice_field.width = 5
100.times { puts rice_field.area }