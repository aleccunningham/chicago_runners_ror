require 'test_helper'

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get reports_all_url
    assert_response :success
  end

  test "should get sales" do
    get reports_sales_url
    assert_response :success
  end

end
