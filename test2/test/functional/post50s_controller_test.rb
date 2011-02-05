require 'test_helper'

class Post50sControllerTest < ActionController::TestCase
  setup do
    @post50 = post50s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post50s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post50" do
    assert_difference('Post50.count') do
      post :create, :post50 => @post50.attributes
    end

    assert_redirected_to post50_path(assigns(:post50))
  end

  test "should show post50" do
    get :show, :id => @post50.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post50.to_param
    assert_response :success
  end

  test "should update post50" do
    put :update, :id => @post50.to_param, :post50 => @post50.attributes
    assert_redirected_to post50_path(assigns(:post50))
  end

  test "should destroy post50" do
    assert_difference('Post50.count', -1) do
      delete :destroy, :id => @post50.to_param
    end

    assert_redirected_to post50s_path
  end
end
