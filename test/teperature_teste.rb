require 'simplecov'
SimpleCov.start 'rails'

require 'minitest/autorun'
require_relative '../model/tempeture'

class TemperatureTest < Minitest::Test
  def test_get_value_of_temperature
    assert_equal 100, Temperature.new(100, 'f').value
  end

  def test_get_unit_of_temperature
    assert_equal 'f', Temperature.new(100, 'f').unit
  end

  def test_set_value_of_temperature
    temperature = Temperature.new(100, 'f')
    temperature.value = 101
    assert_equal 101, temperature.value
  end

  def test_set_unit_of_temperature
    temperature = Temperature.new(100, 'f')
    temperature.unit = 'c'
    assert_equal 'c', temperature.unit
  end

  def test_fahrenheit_to_celsius_of_temperature
    temperature = Temperature.new(1, 'c')
    assert_equal -17.2222, temperature.to_fahrenheit
  end

  def test_fahrenheit_to_kelvin_of_temperature
    temperature = Temperature.new(1, 'k')
    assert_equal 255.928, temperature.to_fahrenheit
  end

  def test_kelvin_to_fahrenheit_of_temperature
    temperature = Temperature.new(1, 'f')
    assert_equal -457.87, temperature.to_kelvin
  end

  def test_kelvin_to_celsius_of_temperature
    temperature = Temperature.new(1, 'c')
    assert_equal -272.15, temperature.to_kelvin
  end

  def test_celsius_to_fahrenheit_of_temperature
    temperature = Temperature.new(1, 'f')
    assert_equal 33.8, temperature.to_celsius
  end

  def test_celsius_to_kelvin_of_temperature
    temperature = Temperature.new(1, 'k')
    assert_equal -17.2222, temperature.to_celsius
  end
end