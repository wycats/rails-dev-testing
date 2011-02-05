require 'test_helper'

class Post449sControllerTest < ActionController::TestCase
  setup do
    @post449 = post449s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post449s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post449" do
    assert_difference('Post449.count') do
      post :create, :post449 => @post449.attributes
    end

    assert_redirected_to post449_path(assigns(:post449))
  end

  test "should show post449" do
    get :show, :id => @post449.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post449.to_param
    assert_response :success
  end

  test "should update post449" do
    put :update, :id => @post449.to_param, :post449 => @post449.attributes
    assert_redirected_to post449_path(assigns(:post449))
  end

  test "should destroy post449" do
    assert_difference('Post449.count', -1) do
      delete :destroy, :id => @post449.to_param
    end

    assert_redirected_to post449s_path
  end
end
