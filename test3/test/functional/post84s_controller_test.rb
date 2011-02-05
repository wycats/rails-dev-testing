require 'test_helper'

class Post84sControllerTest < ActionController::TestCase
  setup do
    @post84 = post84s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post84s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post84" do
    assert_difference('Post84.count') do
      post :create, :post84 => @post84.attributes
    end

    assert_redirected_to post84_path(assigns(:post84))
  end

  test "should show post84" do
    get :show, :id => @post84.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post84.to_param
    assert_response :success
  end

  test "should update post84" do
    put :update, :id => @post84.to_param, :post84 => @post84.attributes
    assert_redirected_to post84_path(assigns(:post84))
  end

  test "should destroy post84" do
    assert_difference('Post84.count', -1) do
      delete :destroy, :id => @post84.to_param
    end

    assert_redirected_to post84s_path
  end
end
