require 'test_helper'

class Post22sControllerTest < ActionController::TestCase
  setup do
    @post22 = post22s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post22s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post22" do
    assert_difference('Post22.count') do
      post :create, :post22 => @post22.attributes
    end

    assert_redirected_to post22_path(assigns(:post22))
  end

  test "should show post22" do
    get :show, :id => @post22.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post22.to_param
    assert_response :success
  end

  test "should update post22" do
    put :update, :id => @post22.to_param, :post22 => @post22.attributes
    assert_redirected_to post22_path(assigns(:post22))
  end

  test "should destroy post22" do
    assert_difference('Post22.count', -1) do
      delete :destroy, :id => @post22.to_param
    end

    assert_redirected_to post22s_path
  end
end
