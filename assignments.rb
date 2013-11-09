class Assignments
  attr_reader :x, :y
  def initialize(x: nil, y: nil)
    @x = x.to_a
    @y = y.to_a
  end

  def set
    x.map do |x|
      [x, y.sample].join(' ')
    end
  end
end
