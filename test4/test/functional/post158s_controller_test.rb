require 'test_helper'

class Post158sControllerTest < ActionController::TestCase
  setup do
    @post158 = post158s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post158s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post158" do
    assert_difference('Post158.count') do
      post :create, :post158 => @post158.attributes
    end

    assert_redirected_to post158_path(assigns(:post158))
  end

  test "should show post158" do
    get :show, :id => @post158.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post158.to_param
    assert_response :success
  end

  test "should update post158" do
    put :update, :id => @post158.to_param, :post158 => @post158.attributes
    assert_redirected_to post158_path(assigns(:post158))
  end

  test "should destroy post158" do
    assert_difference('Post158.count', -1) do
      delete :destroy, :id => @post158.to_param
    end

    assert_redirected_to post158s_path
  end
end
