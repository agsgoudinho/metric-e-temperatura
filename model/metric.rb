class Metric
  attr_accessor :value, :unit
  def initialize(value, unit)
    @value = value
    @unit = unit
  end

  def to_inch #polegada
    case @unit
    when 'cm'
      @value * 0.3937014
    when 'ft'
      @value * 12
    when 'm'
      @value * 39.3701
    when 'yd'
      @value * 36
    end
  end

  def to_centimeter #centimetro
    case @unit
    when 'in'
      @value * 2.54
    when 'ft'
      @value * 30.48
    when 'm'
      @value * 100
    when 'yd'
      @value * 91.44
    when 'ml'
      @value * 160934
    end
  end

  def to_foot #pé
    case @unit
    when 'in'
      @value * 0.0833333
    when 'cm'
      @value * 0.0328084
    when 'm'
      @value * 3.28084
    when 'yd'
      @value * 3
    when 'ml'
      @value * 5280
    end
  end

  def to_meter #metro
    case @unit
    when 'in'
      @value * 0.0254
    when 'cm'
      @value * 0.01
    when 'ft'
      @value * 0.3048
    when 'yd'
      @value * 0.9144
    when 'ml'
      @value * 1609.34
    end
  end

  def to_yard #jarda
    case @unit
    when 'in'
      @value * 0.0277778
    when 'cm'
      @value * 0.0109361
    when 'ft'
      @value * 0.333333
    when 'm'
      @value * 1.09361
    when 'ml'
      @value * 1760
    end
  end

  def to_mile #milha
    case @unit
    when 'yd'
      @value * 0.000568182
    when 'cm'
      @value * 6.2137
    when 'ft'
      @value * 0.000189394
    when 'm'
      @value * 0.000621371
    end
  end
end