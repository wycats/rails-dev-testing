require 'test_helper'

class Post290sControllerTest < ActionController::TestCase
  setup do
    @post290 = post290s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post290s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post290" do
    assert_difference('Post290.count') do
      post :create, :post290 => @post290.attributes
    end

    assert_redirected_to post290_path(assigns(:post290))
  end

  test "should show post290" do
    get :show, :id => @post290.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post290.to_param
    assert_response :success
  end

  test "should update post290" do
    put :update, :id => @post290.to_param, :post290 => @post290.attributes
    assert_redirected_to post290_path(assigns(:post290))
  end

  test "should destroy post290" do
    assert_difference('Post290.count', -1) do
      delete :destroy, :id => @post290.to_param
    end

    assert_redirected_to post290s_path
  end
end
