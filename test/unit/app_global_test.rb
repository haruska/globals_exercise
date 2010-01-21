require 'test_helper'

class AppGlobalTest < ActiveSupport::TestCase

  should_validate_presence_of :name

  def test_unique_override_of_name
    #name must be unique. If something is trying to create value,
    #accept it as the new value for name

    %w[1 2 3].each do |value|
      AppGlobal.create(:name => 'conf', :value => value)
      ag = AppGlobal.find_by_name('conf')
      assert_equal value, ag.value
    end

  end

  def test_storage_of_various_types
    valid_values = ["val", 5, 1.43, false]
    
    #all values should be reloaded as their appropriate type
    valid_values.each do |value|
      AppGlobal.create(:name => 'test', :value => value)
      assert_equal value, AppGlobal.find_by_name('test').value
    end
  end

  def test_nil_value_ok
    AppGlobal.create(:name => 'nil')
    assert_nil AppGlobal.find_by_name('nil').value
  end
end
