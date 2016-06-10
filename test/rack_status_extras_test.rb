require 'test_helper'

class RackStatusExtrasTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::RackStatusExtras::VERSION
  end

  def test_it_does_something_useful
    assert ::Rack::Utils::SYMBOL_TO_STATUS_CODE.include? :created_201
  end

  def test_it_does_not_break_anything
    assert ::Rack::Utils::SYMBOL_TO_STATUS_CODE.include? :created
  end
end
