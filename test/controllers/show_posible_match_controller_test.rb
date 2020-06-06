require 'test_helper'

class ShowPosibleMatchControllerTest < ActionDispatch::IntegrationTest
  test "should get Find_love" do
    get show_posible_match_Find_love_url
    assert_response :success
  end

end
