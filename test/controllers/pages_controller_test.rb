require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get find" do
    get :find
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get signin" do
    get :signin
    assert_response :success
  end

  test "should get write" do
    get :write
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

  test "should get update_view" do
    get :update_view
    assert_response :success
  end

  test "should get update_change" do
    get :update_change
    assert_response :success
  end

end
