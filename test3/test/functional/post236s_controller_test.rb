require 'test_helper'

class Post236sControllerTest < ActionController::TestCase
  setup do
    @post236 = post236s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post236s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post236" do
    assert_difference('Post236.count') do
      post :create, :post236 => @post236.attributes
    end

    assert_redirected_to post236_path(assigns(:post236))
  end

  test "should show post236" do
    get :show, :id => @post236.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post236.to_param
    assert_response :success
  end

  test "should update post236" do
    put :update, :id => @post236.to_param, :post236 => @post236.attributes
    assert_redirected_to post236_path(assigns(:post236))
  end

  test "should destroy post236" do
    assert_difference('Post236.count', -1) do
      delete :destroy, :id => @post236.to_param
    end

    assert_redirected_to post236s_path
  end
end
