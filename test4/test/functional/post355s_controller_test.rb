require 'test_helper'

class Post355sControllerTest < ActionController::TestCase
  setup do
    @post355 = post355s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post355s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post355" do
    assert_difference('Post355.count') do
      post :create, :post355 => @post355.attributes
    end

    assert_redirected_to post355_path(assigns(:post355))
  end

  test "should show post355" do
    get :show, :id => @post355.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post355.to_param
    assert_response :success
  end

  test "should update post355" do
    put :update, :id => @post355.to_param, :post355 => @post355.attributes
    assert_redirected_to post355_path(assigns(:post355))
  end

  test "should destroy post355" do
    assert_difference('Post355.count', -1) do
      delete :destroy, :id => @post355.to_param
    end

    assert_redirected_to post355s_path
  end
end
