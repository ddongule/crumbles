require 'test_helper'

class DetailItemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get detail_item_index_url
    assert_response :success
  end

end
