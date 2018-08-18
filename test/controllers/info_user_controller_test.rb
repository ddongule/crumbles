require 'test_helper'

class InfoUserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get info_user_index_url
    assert_response :success
  end

end
