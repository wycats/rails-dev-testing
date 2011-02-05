require 'test_helper'

class Post446sControllerTest < ActionController::TestCase
  setup do
    @post446 = post446s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post446s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post446" do
    assert_difference('Post446.count') do
      post :create, :post446 => @post446.attributes
    end

    assert_redirected_to post446_path(assigns(:post446))
  end

  test "should show post446" do
    get :show, :id => @post446.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post446.to_param
    assert_response :success
  end

  test "should update post446" do
    put :update, :id => @post446.to_param, :post446 => @post446.attributes
    assert_redirected_to post446_path(assigns(:post446))
  end

  test "should destroy post446" do
    assert_difference('Post446.count', -1) do
      delete :destroy, :id => @post446.to_param
    end

    assert_redirected_to post446s_path
  end
end
