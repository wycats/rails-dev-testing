require 'test_helper'

class Post139sControllerTest < ActionController::TestCase
  setup do
    @post139 = post139s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post139s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post139" do
    assert_difference('Post139.count') do
      post :create, :post139 => @post139.attributes
    end

    assert_redirected_to post139_path(assigns(:post139))
  end

  test "should show post139" do
    get :show, :id => @post139.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post139.to_param
    assert_response :success
  end

  test "should update post139" do
    put :update, :id => @post139.to_param, :post139 => @post139.attributes
    assert_redirected_to post139_path(assigns(:post139))
  end

  test "should destroy post139" do
    assert_difference('Post139.count', -1) do
      delete :destroy, :id => @post139.to_param
    end

    assert_redirected_to post139s_path
  end
end
