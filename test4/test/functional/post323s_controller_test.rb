require 'test_helper'

class Post323sControllerTest < ActionController::TestCase
  setup do
    @post323 = post323s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post323s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post323" do
    assert_difference('Post323.count') do
      post :create, :post323 => @post323.attributes
    end

    assert_redirected_to post323_path(assigns(:post323))
  end

  test "should show post323" do
    get :show, :id => @post323.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post323.to_param
    assert_response :success
  end

  test "should update post323" do
    put :update, :id => @post323.to_param, :post323 => @post323.attributes
    assert_redirected_to post323_path(assigns(:post323))
  end

  test "should destroy post323" do
    assert_difference('Post323.count', -1) do
      delete :destroy, :id => @post323.to_param
    end

    assert_redirected_to post323s_path
  end
end
