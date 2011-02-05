require 'test_helper'

class Post233sControllerTest < ActionController::TestCase
  setup do
    @post233 = post233s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post233s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post233" do
    assert_difference('Post233.count') do
      post :create, :post233 => @post233.attributes
    end

    assert_redirected_to post233_path(assigns(:post233))
  end

  test "should show post233" do
    get :show, :id => @post233.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post233.to_param
    assert_response :success
  end

  test "should update post233" do
    put :update, :id => @post233.to_param, :post233 => @post233.attributes
    assert_redirected_to post233_path(assigns(:post233))
  end

  test "should destroy post233" do
    assert_difference('Post233.count', -1) do
      delete :destroy, :id => @post233.to_param
    end

    assert_redirected_to post233s_path
  end
end
