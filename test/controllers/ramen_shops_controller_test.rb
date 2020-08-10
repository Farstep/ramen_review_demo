require 'test_helper'

class RamenShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ramen_shops_index_url
    assert_response :success
  end

  test "should get show" do
    get ramen_shops_show_url
    assert_response :success
  end

end
