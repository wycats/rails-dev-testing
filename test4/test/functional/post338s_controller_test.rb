require 'test_helper'

class Post338sControllerTest < ActionController::TestCase
  setup do
    @post338 = post338s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post338s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post338" do
    assert_difference('Post338.count') do
      post :create, :post338 => @post338.attributes
    end

    assert_redirected_to post338_path(assigns(:post338))
  end

  test "should show post338" do
    get :show, :id => @post338.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post338.to_param
    assert_response :success
  end

  test "should update post338" do
    put :update, :id => @post338.to_param, :post338 => @post338.attributes
    assert_redirected_to post338_path(assigns(:post338))
  end

  test "should destroy post338" do
    assert_difference('Post338.count', -1) do
      delete :destroy, :id => @post338.to_param
    end

    assert_redirected_to post338s_path
  end
end
