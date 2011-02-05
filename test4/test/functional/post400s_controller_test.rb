require 'test_helper'

class Post400sControllerTest < ActionController::TestCase
  setup do
    @post400 = post400s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post400s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post400" do
    assert_difference('Post400.count') do
      post :create, :post400 => @post400.attributes
    end

    assert_redirected_to post400_path(assigns(:post400))
  end

  test "should show post400" do
    get :show, :id => @post400.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post400.to_param
    assert_response :success
  end

  test "should update post400" do
    put :update, :id => @post400.to_param, :post400 => @post400.attributes
    assert_redirected_to post400_path(assigns(:post400))
  end

  test "should destroy post400" do
    assert_difference('Post400.count', -1) do
      delete :destroy, :id => @post400.to_param
    end

    assert_redirected_to post400s_path
  end
end
