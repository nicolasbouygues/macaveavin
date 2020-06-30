require 'test_helper'

class WinesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get wines_index_url
    assert_response :success
  end

  test "should get show" do
    get wines_show_url
    assert_response :success
  end

  test "should get new" do
    get wines_new_url
    assert_response :success
  end

  test "should get create" do
    get wines_create_url
    assert_response :success
  end

  test "should get destroy" do
    get wines_destroy_url
    assert_response :success
  end

  test "should get update" do
    get wines_update_url
    assert_response :success
  end

end
