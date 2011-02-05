require 'test_helper'

class Post244sControllerTest < ActionController::TestCase
  setup do
    @post244 = post244s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post244s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post244" do
    assert_difference('Post244.count') do
      post :create, :post244 => @post244.attributes
    end

    assert_redirected_to post244_path(assigns(:post244))
  end

  test "should show post244" do
    get :show, :id => @post244.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post244.to_param
    assert_response :success
  end

  test "should update post244" do
    put :update, :id => @post244.to_param, :post244 => @post244.attributes
    assert_redirected_to post244_path(assigns(:post244))
  end

  test "should destroy post244" do
    assert_difference('Post244.count', -1) do
      delete :destroy, :id => @post244.to_param
    end

    assert_redirected_to post244s_path
  end
end
