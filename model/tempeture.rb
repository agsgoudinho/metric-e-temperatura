class Temperature
    attr_accessor :value, :unit
    def initialize(value, unit)
        @value = value
        @unit = unit
    end

    def to_fahrenheit
        case @unit
        when 'c'
            @value * -17.2222
        when 'k'
            @value * 255.928
        end
    end

    def to_kelvin
        case @unit
        when 'f'
            @value * -457.87
        when 'c'
            @value * -272.15
        end
    end

    def to_celsius
        case @unit
        when 'f'
            @value * 33.8
        when 'k'
            @value * -17.2222
        end
    end
end
