require 'test_helper'

class Post185sControllerTest < ActionController::TestCase
  setup do
    @post185 = post185s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post185s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post185" do
    assert_difference('Post185.count') do
      post :create, :post185 => @post185.attributes
    end

    assert_redirected_to post185_path(assigns(:post185))
  end

  test "should show post185" do
    get :show, :id => @post185.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post185.to_param
    assert_response :success
  end

  test "should update post185" do
    put :update, :id => @post185.to_param, :post185 => @post185.attributes
    assert_redirected_to post185_path(assigns(:post185))
  end

  test "should destroy post185" do
    assert_difference('Post185.count', -1) do
      delete :destroy, :id => @post185.to_param
    end

    assert_redirected_to post185s_path
  end
end
