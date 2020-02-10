require 'test_helper'

class BreedersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get breeders_index_url
    assert_response :success
  end

  test "should get show" do
    get breeders_show_url
    assert_response :success
  end

  test "should get new" do
    get breeders_new_url
    assert_response :success
  end

  test "should get create" do
    get breeders_create_url
    assert_response :success
  end

  test "should get edit" do
    get breeders_edit_url
    assert_response :success
  end

  test "should get update" do
    get breeders_update_url
    assert_response :success
  end

  test "should get destroy" do
    get breeders_destroy_url
    assert_response :success
  end

end
