require 'test_helper'

class Post129sControllerTest < ActionController::TestCase
  setup do
    @post129 = post129s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post129s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post129" do
    assert_difference('Post129.count') do
      post :create, :post129 => @post129.attributes
    end

    assert_redirected_to post129_path(assigns(:post129))
  end

  test "should show post129" do
    get :show, :id => @post129.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post129.to_param
    assert_response :success
  end

  test "should update post129" do
    put :update, :id => @post129.to_param, :post129 => @post129.attributes
    assert_redirected_to post129_path(assigns(:post129))
  end

  test "should destroy post129" do
    assert_difference('Post129.count', -1) do
      delete :destroy, :id => @post129.to_param
    end

    assert_redirected_to post129s_path
  end
end
