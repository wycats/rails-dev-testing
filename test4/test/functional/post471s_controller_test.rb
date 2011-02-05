require 'test_helper'

class Post471sControllerTest < ActionController::TestCase
  setup do
    @post471 = post471s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post471s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post471" do
    assert_difference('Post471.count') do
      post :create, :post471 => @post471.attributes
    end

    assert_redirected_to post471_path(assigns(:post471))
  end

  test "should show post471" do
    get :show, :id => @post471.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post471.to_param
    assert_response :success
  end

  test "should update post471" do
    put :update, :id => @post471.to_param, :post471 => @post471.attributes
    assert_redirected_to post471_path(assigns(:post471))
  end

  test "should destroy post471" do
    assert_difference('Post471.count', -1) do
      delete :destroy, :id => @post471.to_param
    end

    assert_redirected_to post471s_path
  end
end
