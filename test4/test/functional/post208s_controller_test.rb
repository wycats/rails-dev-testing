require 'test_helper'

class Post208sControllerTest < ActionController::TestCase
  setup do
    @post208 = post208s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post208s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post208" do
    assert_difference('Post208.count') do
      post :create, :post208 => @post208.attributes
    end

    assert_redirected_to post208_path(assigns(:post208))
  end

  test "should show post208" do
    get :show, :id => @post208.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post208.to_param
    assert_response :success
  end

  test "should update post208" do
    put :update, :id => @post208.to_param, :post208 => @post208.attributes
    assert_redirected_to post208_path(assigns(:post208))
  end

  test "should destroy post208" do
    assert_difference('Post208.count', -1) do
      delete :destroy, :id => @post208.to_param
    end

    assert_redirected_to post208s_path
  end
end
