require 'test_helper'

class Post78sControllerTest < ActionController::TestCase
  setup do
    @post78 = post78s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post78s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post78" do
    assert_difference('Post78.count') do
      post :create, :post78 => @post78.attributes
    end

    assert_redirected_to post78_path(assigns(:post78))
  end

  test "should show post78" do
    get :show, :id => @post78.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post78.to_param
    assert_response :success
  end

  test "should update post78" do
    put :update, :id => @post78.to_param, :post78 => @post78.attributes
    assert_redirected_to post78_path(assigns(:post78))
  end

  test "should destroy post78" do
    assert_difference('Post78.count', -1) do
      delete :destroy, :id => @post78.to_param
    end

    assert_redirected_to post78s_path
  end
end
