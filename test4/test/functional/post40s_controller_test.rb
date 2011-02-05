require 'test_helper'

class Post40sControllerTest < ActionController::TestCase
  setup do
    @post40 = post40s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post40s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post40" do
    assert_difference('Post40.count') do
      post :create, :post40 => @post40.attributes
    end

    assert_redirected_to post40_path(assigns(:post40))
  end

  test "should show post40" do
    get :show, :id => @post40.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post40.to_param
    assert_response :success
  end

  test "should update post40" do
    put :update, :id => @post40.to_param, :post40 => @post40.attributes
    assert_redirected_to post40_path(assigns(:post40))
  end

  test "should destroy post40" do
    assert_difference('Post40.count', -1) do
      delete :destroy, :id => @post40.to_param
    end

    assert_redirected_to post40s_path
  end
end
