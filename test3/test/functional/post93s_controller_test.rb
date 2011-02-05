require 'test_helper'

class Post93sControllerTest < ActionController::TestCase
  setup do
    @post93 = post93s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post93s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post93" do
    assert_difference('Post93.count') do
      post :create, :post93 => @post93.attributes
    end

    assert_redirected_to post93_path(assigns(:post93))
  end

  test "should show post93" do
    get :show, :id => @post93.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post93.to_param
    assert_response :success
  end

  test "should update post93" do
    put :update, :id => @post93.to_param, :post93 => @post93.attributes
    assert_redirected_to post93_path(assigns(:post93))
  end

  test "should destroy post93" do
    assert_difference('Post93.count', -1) do
      delete :destroy, :id => @post93.to_param
    end

    assert_redirected_to post93s_path
  end
end
