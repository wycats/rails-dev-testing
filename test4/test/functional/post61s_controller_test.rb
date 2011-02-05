require 'test_helper'

class Post61sControllerTest < ActionController::TestCase
  setup do
    @post61 = post61s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post61s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post61" do
    assert_difference('Post61.count') do
      post :create, :post61 => @post61.attributes
    end

    assert_redirected_to post61_path(assigns(:post61))
  end

  test "should show post61" do
    get :show, :id => @post61.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post61.to_param
    assert_response :success
  end

  test "should update post61" do
    put :update, :id => @post61.to_param, :post61 => @post61.attributes
    assert_redirected_to post61_path(assigns(:post61))
  end

  test "should destroy post61" do
    assert_difference('Post61.count', -1) do
      delete :destroy, :id => @post61.to_param
    end

    assert_redirected_to post61s_path
  end
end
