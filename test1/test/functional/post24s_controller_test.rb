require 'test_helper'

class Post24sControllerTest < ActionController::TestCase
  setup do
    @post24 = post24s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post24s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post24" do
    assert_difference('Post24.count') do
      post :create, :post24 => @post24.attributes
    end

    assert_redirected_to post24_path(assigns(:post24))
  end

  test "should show post24" do
    get :show, :id => @post24.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post24.to_param
    assert_response :success
  end

  test "should update post24" do
    put :update, :id => @post24.to_param, :post24 => @post24.attributes
    assert_redirected_to post24_path(assigns(:post24))
  end

  test "should destroy post24" do
    assert_difference('Post24.count', -1) do
      delete :destroy, :id => @post24.to_param
    end

    assert_redirected_to post24s_path
  end
end
