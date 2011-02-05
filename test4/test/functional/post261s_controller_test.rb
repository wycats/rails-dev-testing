require 'test_helper'

class Post261sControllerTest < ActionController::TestCase
  setup do
    @post261 = post261s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post261s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post261" do
    assert_difference('Post261.count') do
      post :create, :post261 => @post261.attributes
    end

    assert_redirected_to post261_path(assigns(:post261))
  end

  test "should show post261" do
    get :show, :id => @post261.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post261.to_param
    assert_response :success
  end

  test "should update post261" do
    put :update, :id => @post261.to_param, :post261 => @post261.attributes
    assert_redirected_to post261_path(assigns(:post261))
  end

  test "should destroy post261" do
    assert_difference('Post261.count', -1) do
      delete :destroy, :id => @post261.to_param
    end

    assert_redirected_to post261s_path
  end
end
