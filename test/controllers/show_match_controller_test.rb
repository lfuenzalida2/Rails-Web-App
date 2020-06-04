require 'test_helper'

class ShowMatchControllerTest < ActionDispatch::IntegrationTest
  test "should get My_match" do
    get show_match_My_match_url
    assert_response :success
  end

end
