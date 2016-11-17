require 'test_helper'

class ListnsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get listns_controller_index_url
    assert_response :success
  end

  test "should get show" do
    get listns_controller_show_url
    assert_response :success
  end

  test "should get new" do
    get listns_controller_new_url
    assert_response :success
  end

  test "should get create" do
    get listns_controller_create_url
    assert_response :success
  end

  test "should get edit" do
    get listns_controller_edit_url
    assert_response :success
  end

  test "should get update" do
    get listns_controller_update_url
    assert_response :success
  end

  test "should get destroy" do
    get listns_controller_destroy_url
    assert_response :success
  end

end
