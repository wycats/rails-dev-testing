require 'test_helper'

class Post224sControllerTest < ActionController::TestCase
  setup do
    @post224 = post224s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post224s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post224" do
    assert_difference('Post224.count') do
      post :create, :post224 => @post224.attributes
    end

    assert_redirected_to post224_path(assigns(:post224))
  end

  test "should show post224" do
    get :show, :id => @post224.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post224.to_param
    assert_response :success
  end

  test "should update post224" do
    put :update, :id => @post224.to_param, :post224 => @post224.attributes
    assert_redirected_to post224_path(assigns(:post224))
  end

  test "should destroy post224" do
    assert_difference('Post224.count', -1) do
      delete :destroy, :id => @post224.to_param
    end

    assert_redirected_to post224s_path
  end
end
