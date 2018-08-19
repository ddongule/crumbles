require 'test_helper'

class InfoOwnerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get info_owner_index_url
    assert_response :success
  end

end
