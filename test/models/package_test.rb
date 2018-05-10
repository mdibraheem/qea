require 'test_helper'

class PackageTest < ActiveSupport::TestCase
  test "package has event association" do
    event = Event.new
    package = Package.new(event: event)
    assert_equal package.event, event
  end
end
