require 'test_helper'

class Post56sControllerTest < ActionController::TestCase
  setup do
    @post56 = post56s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post56s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post56" do
    assert_difference('Post56.count') do
      post :create, :post56 => @post56.attributes
    end

    assert_redirected_to post56_path(assigns(:post56))
  end

  test "should show post56" do
    get :show, :id => @post56.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post56.to_param
    assert_response :success
  end

  test "should update post56" do
    put :update, :id => @post56.to_param, :post56 => @post56.attributes
    assert_redirected_to post56_path(assigns(:post56))
  end

  test "should destroy post56" do
    assert_difference('Post56.count', -1) do
      delete :destroy, :id => @post56.to_param
    end

    assert_redirected_to post56s_path
  end
end
