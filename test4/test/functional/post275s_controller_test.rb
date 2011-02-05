require 'test_helper'

class Post275sControllerTest < ActionController::TestCase
  setup do
    @post275 = post275s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post275s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post275" do
    assert_difference('Post275.count') do
      post :create, :post275 => @post275.attributes
    end

    assert_redirected_to post275_path(assigns(:post275))
  end

  test "should show post275" do
    get :show, :id => @post275.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post275.to_param
    assert_response :success
  end

  test "should update post275" do
    put :update, :id => @post275.to_param, :post275 => @post275.attributes
    assert_redirected_to post275_path(assigns(:post275))
  end

  test "should destroy post275" do
    assert_difference('Post275.count', -1) do
      delete :destroy, :id => @post275.to_param
    end

    assert_redirected_to post275s_path
  end
end
