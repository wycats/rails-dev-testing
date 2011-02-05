require 'test_helper'

class Post298sControllerTest < ActionController::TestCase
  setup do
    @post298 = post298s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post298s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post298" do
    assert_difference('Post298.count') do
      post :create, :post298 => @post298.attributes
    end

    assert_redirected_to post298_path(assigns(:post298))
  end

  test "should show post298" do
    get :show, :id => @post298.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post298.to_param
    assert_response :success
  end

  test "should update post298" do
    put :update, :id => @post298.to_param, :post298 => @post298.attributes
    assert_redirected_to post298_path(assigns(:post298))
  end

  test "should destroy post298" do
    assert_difference('Post298.count', -1) do
      delete :destroy, :id => @post298.to_param
    end

    assert_redirected_to post298s_path
  end
end
