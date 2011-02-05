require 'test_helper'

class Post327sControllerTest < ActionController::TestCase
  setup do
    @post327 = post327s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post327s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post327" do
    assert_difference('Post327.count') do
      post :create, :post327 => @post327.attributes
    end

    assert_redirected_to post327_path(assigns(:post327))
  end

  test "should show post327" do
    get :show, :id => @post327.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post327.to_param
    assert_response :success
  end

  test "should update post327" do
    put :update, :id => @post327.to_param, :post327 => @post327.attributes
    assert_redirected_to post327_path(assigns(:post327))
  end

  test "should destroy post327" do
    assert_difference('Post327.count', -1) do
      delete :destroy, :id => @post327.to_param
    end

    assert_redirected_to post327s_path
  end
end
