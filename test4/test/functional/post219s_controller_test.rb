require 'test_helper'

class Post219sControllerTest < ActionController::TestCase
  setup do
    @post219 = post219s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post219s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post219" do
    assert_difference('Post219.count') do
      post :create, :post219 => @post219.attributes
    end

    assert_redirected_to post219_path(assigns(:post219))
  end

  test "should show post219" do
    get :show, :id => @post219.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post219.to_param
    assert_response :success
  end

  test "should update post219" do
    put :update, :id => @post219.to_param, :post219 => @post219.attributes
    assert_redirected_to post219_path(assigns(:post219))
  end

  test "should destroy post219" do
    assert_difference('Post219.count', -1) do
      delete :destroy, :id => @post219.to_param
    end

    assert_redirected_to post219s_path
  end
end
