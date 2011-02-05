require 'test_helper'

class Post485sControllerTest < ActionController::TestCase
  setup do
    @post485 = post485s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post485s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post485" do
    assert_difference('Post485.count') do
      post :create, :post485 => @post485.attributes
    end

    assert_redirected_to post485_path(assigns(:post485))
  end

  test "should show post485" do
    get :show, :id => @post485.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post485.to_param
    assert_response :success
  end

  test "should update post485" do
    put :update, :id => @post485.to_param, :post485 => @post485.attributes
    assert_redirected_to post485_path(assigns(:post485))
  end

  test "should destroy post485" do
    assert_difference('Post485.count', -1) do
      delete :destroy, :id => @post485.to_param
    end

    assert_redirected_to post485s_path
  end
end
