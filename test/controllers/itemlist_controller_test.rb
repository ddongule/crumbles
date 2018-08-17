require 'test_helper'

class ItemlistControllerTest < ActionDispatch::IntegrationTest
  test "should get bakery" do
    get itemlist_bakery_url
    assert_response :success
  end

  test "should get bread_name" do
    get itemlist_bread_name_url
    assert_response :success
  end

  test "should get bread_category" do
    get itemlist_bread_category_url
    assert_response :success
  end

end
