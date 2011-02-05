require 'test_helper'

class Post18sControllerTest < ActionController::TestCase
  setup do
    @post18 = post18s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post18s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post18" do
    assert_difference('Post18.count') do
      post :create, :post18 => @post18.attributes
    end

    assert_redirected_to post18_path(assigns(:post18))
  end

  test "should show post18" do
    get :show, :id => @post18.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post18.to_param
    assert_response :success
  end

  test "should update post18" do
    put :update, :id => @post18.to_param, :post18 => @post18.attributes
    assert_redirected_to post18_path(assigns(:post18))
  end

  test "should destroy post18" do
    assert_difference('Post18.count', -1) do
      delete :destroy, :id => @post18.to_param
    end

    assert_redirected_to post18s_path
  end
end
