require 'test_helper'

class Post198sControllerTest < ActionController::TestCase
  setup do
    @post198 = post198s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post198s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post198" do
    assert_difference('Post198.count') do
      post :create, :post198 => @post198.attributes
    end

    assert_redirected_to post198_path(assigns(:post198))
  end

  test "should show post198" do
    get :show, :id => @post198.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post198.to_param
    assert_response :success
  end

  test "should update post198" do
    put :update, :id => @post198.to_param, :post198 => @post198.attributes
    assert_redirected_to post198_path(assigns(:post198))
  end

  test "should destroy post198" do
    assert_difference('Post198.count', -1) do
      delete :destroy, :id => @post198.to_param
    end

    assert_redirected_to post198s_path
  end
end
