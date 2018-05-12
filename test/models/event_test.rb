require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "event has packages association" do
    assert_respond_to Event.new, :packages
  end

  test "next available position is assigned to new event" do
    Event.create(position: 1_000_000 )
    next_event = Event.create
    assert_equal 1_000_001, next_event.position
  end
end
