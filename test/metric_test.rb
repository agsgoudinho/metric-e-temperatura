require 'simplecov'
SimpleCov.start 'rails'

require 'minitest/autorun'
require_relative '../model/metric'

class MetricTest < Minitest::Test
  def test_get_value_of_metric
    assert_equal 17, Metric.new(17, 'cm').value
  end

  def test_get_unit_of_metric
    assert_equal 'cm', Metric.new(17, 'cm').unit
  end

  def test_set_value_of_metric
    metric = Metric.new(17,'cm')
    metric.value = 18
    assert_equal 18, metric.value
  end

  def test_set_unit_of_metric
    metric = Metric.new(17, 'ft')
    metric.unit = 'cm'
    assert_equal 'cm', metric.unit
  end

  def test_centimeter_to_inch_of_metric
    metric = Metric.new(1, 'cm')
    assert_equal 0.3937014, metric.to_inch
  end

  def test_foot_to_inch_of_metric
    metric = Metric.new(1, 'ft')
    assert_equal 12, metric.to_inch
  end

  def test_meter_to_inch_of_metric
    metric = Metric.new(1, 'm')
    assert_equal 39.3701, metric.to_inch
  end

  def test_yard_to_inch_of_metric
    metric = Metric.new(1, 'yd')
    assert_equal 36, metric.to_inch
  end

  def test_inch_to_centimeter_of_metric
    metric = Metric.new(1, 'in')
    assert_equal 2.54, metric.to_centimeter
  end

  def test_foot_to_centimeter_of_metric
    metric = Metric.new(1, 'ft')
    assert_equal 30.48, metric.to_centimeter
  end

  def test_meter_to_centimeter_of_metric
    metric = Metric.new(1, 'm')
    assert_equal 100, metric.to_centimeter
  end

  def test_yard_to_centimeter_of_metric
    metric = Metric.new(1, 'yd')
    assert_equal  91.44, metric.to_centimeter
  end

  def test_mile_to_centimeter_of_metric
    metric = Metric.new(1, 'ml')
    assert_equal 160934, metric.to_centimeter
  end

  def test_inch_to_foot_of_metric
    metric = Metric.new(1, 'in')
    assert_equal 0.0833333, metric.to_foot
  end

  def test_centimeter_to_foot_of_metric
    metric = Metric.new(1, 'cm')
    assert_equal 0.0328084, metric.to_foot
  end

  def test_meter_to_foot_of_metric
    metric = Metric.new(1, 'm')
    assert_equal 3.28084, metric.to_foot
  end

  def test_yard_to_foot_of_metric
    metric = Metric.new(1, 'yd')
    assert_equal 3, metric.to_foot
  end

  def test_mile_to_foot_of_metric
    metric = Metric.new(1, 'ml')
    assert_equal 5280, metric.to_foot
  end

  def test_inch_to_meter_of_metric
    metric = Metric.new(1, 'in')
    assert_equal 0.0254, metric.to_meter
  end

  def test_centimeter_to_meter_of_metric
    metric = Metric.new(1, 'cm')
    assert_equal 0.01, metric.to_meter
  end

  def test_foot_to_meter_of_metric
    metric = Metric.new(1, 'ft')
    assert_equal 0.3048, metric.to_meter
  end

  def test_yard_to_meter_of_metric
    metric = Metric.new(1, 'yd')
    assert_equal 0.9144, metric.to_meter
  end

  def test_mile_to_meter_of_metric
    metric = Metric.new(1, 'ml')
    assert_equal 1609.34, metric.to_meter
  end

  def test_inch_to_yard_of_metric
    metric = Metric.new(1, 'in')
    assert_equal 0.0277778, metric.to_yard
  end

  def test_centimeter_to_yard_of_metric
    metric = Metric.new(1, 'cm')
    assert_equal 0.0109361, metric.to_yard
  end

  def test_foot_to_yard_of_metric
    metric = Metric.new(1, 'ft')
    assert_equal 0.333333, metric.to_yard
  end

  def test_meter_to_yard_of_metric
    metric = Metric.new(1, 'm')
    assert_equal 1.09361, metric.to_yard
  end

  def test_mile_to_yard_of_metric
    metric = Metric.new(1, 'ml')
    assert_equal 1760, metric.to_yard
  end

  def test_yard_to_mile_of_metric
    metric = Metric.new(1, 'yd')
    assert_equal 0.000568182, metric.to_mile
  end

  def test_centimeter_to_mile_of_metric
    metric = Metric.new(1, 'cm')
    assert_equal 6.2137, metric.to_mile
  end

  def test_foot_to_mile_of_metric
    metric = Metric.new(1, 'ft')
    assert_equal 0.000189394, metric.to_mile
  end

  def test_meter_to_mile_of_metric
    metric = Metric.new(1, 'm')
    assert_equal 0.000621371, metric.to_mile
  end
end
