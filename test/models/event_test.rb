require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "event has packages association" do
    assert_respond_to Event.new, :packages
  end
end
