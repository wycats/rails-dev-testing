require 'test_helper'

class Post491sControllerTest < ActionController::TestCase
  setup do
    @post491 = post491s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post491s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post491" do
    assert_difference('Post491.count') do
      post :create, :post491 => @post491.attributes
    end

    assert_redirected_to post491_path(assigns(:post491))
  end

  test "should show post491" do
    get :show, :id => @post491.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post491.to_param
    assert_response :success
  end

  test "should update post491" do
    put :update, :id => @post491.to_param, :post491 => @post491.attributes
    assert_redirected_to post491_path(assigns(:post491))
  end

  test "should destroy post491" do
    assert_difference('Post491.count', -1) do
      delete :destroy, :id => @post491.to_param
    end

    assert_redirected_to post491s_path
  end
end
