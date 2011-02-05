require 'test_helper'

class Post210sControllerTest < ActionController::TestCase
  setup do
    @post210 = post210s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post210s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post210" do
    assert_difference('Post210.count') do
      post :create, :post210 => @post210.attributes
    end

    assert_redirected_to post210_path(assigns(:post210))
  end

  test "should show post210" do
    get :show, :id => @post210.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post210.to_param
    assert_response :success
  end

  test "should update post210" do
    put :update, :id => @post210.to_param, :post210 => @post210.attributes
    assert_redirected_to post210_path(assigns(:post210))
  end

  test "should destroy post210" do
    assert_difference('Post210.count', -1) do
      delete :destroy, :id => @post210.to_param
    end

    assert_redirected_to post210s_path
  end
end
