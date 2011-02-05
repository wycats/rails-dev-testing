require 'test_helper'

class Post131sControllerTest < ActionController::TestCase
  setup do
    @post131 = post131s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post131s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post131" do
    assert_difference('Post131.count') do
      post :create, :post131 => @post131.attributes
    end

    assert_redirected_to post131_path(assigns(:post131))
  end

  test "should show post131" do
    get :show, :id => @post131.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post131.to_param
    assert_response :success
  end

  test "should update post131" do
    put :update, :id => @post131.to_param, :post131 => @post131.attributes
    assert_redirected_to post131_path(assigns(:post131))
  end

  test "should destroy post131" do
    assert_difference('Post131.count', -1) do
      delete :destroy, :id => @post131.to_param
    end

    assert_redirected_to post131s_path
  end
end
