require 'test_helper'

class Post381sControllerTest < ActionController::TestCase
  setup do
    @post381 = post381s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post381s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post381" do
    assert_difference('Post381.count') do
      post :create, :post381 => @post381.attributes
    end

    assert_redirected_to post381_path(assigns(:post381))
  end

  test "should show post381" do
    get :show, :id => @post381.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post381.to_param
    assert_response :success
  end

  test "should update post381" do
    put :update, :id => @post381.to_param, :post381 => @post381.attributes
    assert_redirected_to post381_path(assigns(:post381))
  end

  test "should destroy post381" do
    assert_difference('Post381.count', -1) do
      delete :destroy, :id => @post381.to_param
    end

    assert_redirected_to post381s_path
  end
end
