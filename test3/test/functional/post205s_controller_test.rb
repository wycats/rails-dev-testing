require 'test_helper'

class Post205sControllerTest < ActionController::TestCase
  setup do
    @post205 = post205s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post205s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post205" do
    assert_difference('Post205.count') do
      post :create, :post205 => @post205.attributes
    end

    assert_redirected_to post205_path(assigns(:post205))
  end

  test "should show post205" do
    get :show, :id => @post205.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post205.to_param
    assert_response :success
  end

  test "should update post205" do
    put :update, :id => @post205.to_param, :post205 => @post205.attributes
    assert_redirected_to post205_path(assigns(:post205))
  end

  test "should destroy post205" do
    assert_difference('Post205.count', -1) do
      delete :destroy, :id => @post205.to_param
    end

    assert_redirected_to post205s_path
  end
end
