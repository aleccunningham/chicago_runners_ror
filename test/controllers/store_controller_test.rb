require 'test_helper'

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get shop" do
    get store_shop_url
    assert_response :success
  end

end
