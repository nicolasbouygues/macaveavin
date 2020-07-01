require 'test_helper'

class CellarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cellars_index_url
    assert_response :success
  end

  test "should get show" do
    get cellars_show_url
    assert_response :success
  end

  test "should get new" do
    get cellars_new_url
    assert_response :success
  end

  test "should get create" do
    get cellars_create_url
    assert_response :success
  end

  test "should get edit" do
    get cellars_edit_url
    assert_response :success
  end

  test "should get update" do
    get cellars_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cellars_destroy_url
    assert_response :success
  end

end
