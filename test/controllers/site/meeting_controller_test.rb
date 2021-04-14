require 'test_helper'

class Site::MeetingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get site_meeting_index_url
    assert_response :success
  end

end
