require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get home_index_url
    assert_response :success
  end

  test "should get new" do
    get home_new_url
    assert_response :success
  end

  test "should get read" do
    get home_read_url
    assert_response :success
  end

  test "should get update" do
    get home_update_url
    assert_response :success
  end

end
