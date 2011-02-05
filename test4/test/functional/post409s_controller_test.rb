require 'test_helper'

class Post409sControllerTest < ActionController::TestCase
  setup do
    @post409 = post409s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post409s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post409" do
    assert_difference('Post409.count') do
      post :create, :post409 => @post409.attributes
    end

    assert_redirected_to post409_path(assigns(:post409))
  end

  test "should show post409" do
    get :show, :id => @post409.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post409.to_param
    assert_response :success
  end

  test "should update post409" do
    put :update, :id => @post409.to_param, :post409 => @post409.attributes
    assert_redirected_to post409_path(assigns(:post409))
  end

  test "should destroy post409" do
    assert_difference('Post409.count', -1) do
      delete :destroy, :id => @post409.to_param
    end

    assert_redirected_to post409s_path
  end
end
