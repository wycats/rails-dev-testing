require 'test_helper'

class Post27sControllerTest < ActionController::TestCase
  setup do
    @post27 = post27s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post27s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post27" do
    assert_difference('Post27.count') do
      post :create, :post27 => @post27.attributes
    end

    assert_redirected_to post27_path(assigns(:post27))
  end

  test "should show post27" do
    get :show, :id => @post27.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post27.to_param
    assert_response :success
  end

  test "should update post27" do
    put :update, :id => @post27.to_param, :post27 => @post27.attributes
    assert_redirected_to post27_path(assigns(:post27))
  end

  test "should destroy post27" do
    assert_difference('Post27.count', -1) do
      delete :destroy, :id => @post27.to_param
    end

    assert_redirected_to post27s_path
  end
end
