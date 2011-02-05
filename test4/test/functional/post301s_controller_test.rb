require 'test_helper'

class Post301sControllerTest < ActionController::TestCase
  setup do
    @post301 = post301s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post301s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post301" do
    assert_difference('Post301.count') do
      post :create, :post301 => @post301.attributes
    end

    assert_redirected_to post301_path(assigns(:post301))
  end

  test "should show post301" do
    get :show, :id => @post301.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post301.to_param
    assert_response :success
  end

  test "should update post301" do
    put :update, :id => @post301.to_param, :post301 => @post301.attributes
    assert_redirected_to post301_path(assigns(:post301))
  end

  test "should destroy post301" do
    assert_difference('Post301.count', -1) do
      delete :destroy, :id => @post301.to_param
    end

    assert_redirected_to post301s_path
  end
end
