require 'test_helper'

class Post357sControllerTest < ActionController::TestCase
  setup do
    @post357 = post357s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post357s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post357" do
    assert_difference('Post357.count') do
      post :create, :post357 => @post357.attributes
    end

    assert_redirected_to post357_path(assigns(:post357))
  end

  test "should show post357" do
    get :show, :id => @post357.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post357.to_param
    assert_response :success
  end

  test "should update post357" do
    put :update, :id => @post357.to_param, :post357 => @post357.attributes
    assert_redirected_to post357_path(assigns(:post357))
  end

  test "should destroy post357" do
    assert_difference('Post357.count', -1) do
      delete :destroy, :id => @post357.to_param
    end

    assert_redirected_to post357s_path
  end
end
