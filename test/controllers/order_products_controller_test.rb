require "test_helper"

class OrderProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get order_products_create_url
    assert_response :success
  end
end
