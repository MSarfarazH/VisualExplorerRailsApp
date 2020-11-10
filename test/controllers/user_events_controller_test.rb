require 'test_helper'

class UserEventsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_events_new_url
    assert_response :success
  end

  test "should get show" do
    get user_events_show_url
    assert_response :success
  end

  test "should get index" do
    get user_events_index_url
    assert_response :success
  end

  test "should get create" do
    get user_events_create_url
    assert_response :success
  end

end
