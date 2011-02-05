require 'test_helper'

class Post5sControllerTest < ActionController::TestCase
  setup do
    @post5 = post5s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post5s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post5" do
    assert_difference('Post5.count') do
      post :create, :post5 => @post5.attributes
    end

    assert_redirected_to post5_path(assigns(:post5))
  end

  test "should show post5" do
    get :show, :id => @post5.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post5.to_param
    assert_response :success
  end

  test "should update post5" do
    put :update, :id => @post5.to_param, :post5 => @post5.attributes
    assert_redirected_to post5_path(assigns(:post5))
  end

  test "should destroy post5" do
    assert_difference('Post5.count', -1) do
      delete :destroy, :id => @post5.to_param
    end

    assert_redirected_to post5s_path
  end
end
