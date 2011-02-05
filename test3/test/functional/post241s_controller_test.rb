require 'test_helper'

class Post241sControllerTest < ActionController::TestCase
  setup do
    @post241 = post241s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post241s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post241" do
    assert_difference('Post241.count') do
      post :create, :post241 => @post241.attributes
    end

    assert_redirected_to post241_path(assigns(:post241))
  end

  test "should show post241" do
    get :show, :id => @post241.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post241.to_param
    assert_response :success
  end

  test "should update post241" do
    put :update, :id => @post241.to_param, :post241 => @post241.attributes
    assert_redirected_to post241_path(assigns(:post241))
  end

  test "should destroy post241" do
    assert_difference('Post241.count', -1) do
      delete :destroy, :id => @post241.to_param
    end

    assert_redirected_to post241s_path
  end
end
