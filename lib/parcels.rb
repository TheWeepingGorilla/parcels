class Parcel
  def initialize(height, width, length, weight)
  @height = height
  @width = width
  @length = length
  @weight = weight
  end


  def height
    @height
  end

  def width
    @width
  end

  def length
    @length
  end

  def weight
    @weight
  end

  def volume
    @height * @width * @length
  end

  def cost_to_ship
    self.volume / @weight
  end
end
