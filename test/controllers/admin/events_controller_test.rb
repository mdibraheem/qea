require 'test_helper'

class Admin::EventsControllerTest < ActionController::TestCase

  test "sort requests sorts the event records in the data base" do
    sorted_ids = events(:one, :two, :four, :three).map(&:id)
    put :sort, params: { event_ids: sorted_ids }, xhr: true
    assert_equal sorted_ids, Event.where(id: sorted_ids).ordered.pluck(:id)
  end
end
