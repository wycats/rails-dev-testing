require 'test_helper'

class Post125sControllerTest < ActionController::TestCase
  setup do
    @post125 = post125s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post125s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post125" do
    assert_difference('Post125.count') do
      post :create, :post125 => @post125.attributes
    end

    assert_redirected_to post125_path(assigns(:post125))
  end

  test "should show post125" do
    get :show, :id => @post125.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post125.to_param
    assert_response :success
  end

  test "should update post125" do
    put :update, :id => @post125.to_param, :post125 => @post125.attributes
    assert_redirected_to post125_path(assigns(:post125))
  end

  test "should destroy post125" do
    assert_difference('Post125.count', -1) do
      delete :destroy, :id => @post125.to_param
    end

    assert_redirected_to post125s_path
  end
end
