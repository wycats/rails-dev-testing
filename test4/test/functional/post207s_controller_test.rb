require 'test_helper'

class Post207sControllerTest < ActionController::TestCase
  setup do
    @post207 = post207s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post207s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post207" do
    assert_difference('Post207.count') do
      post :create, :post207 => @post207.attributes
    end

    assert_redirected_to post207_path(assigns(:post207))
  end

  test "should show post207" do
    get :show, :id => @post207.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post207.to_param
    assert_response :success
  end

  test "should update post207" do
    put :update, :id => @post207.to_param, :post207 => @post207.attributes
    assert_redirected_to post207_path(assigns(:post207))
  end

  test "should destroy post207" do
    assert_difference('Post207.count', -1) do
      delete :destroy, :id => @post207.to_param
    end

    assert_redirected_to post207s_path
  end
end
