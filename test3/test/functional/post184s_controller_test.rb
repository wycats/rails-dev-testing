require 'test_helper'

class Post184sControllerTest < ActionController::TestCase
  setup do
    @post184 = post184s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post184s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post184" do
    assert_difference('Post184.count') do
      post :create, :post184 => @post184.attributes
    end

    assert_redirected_to post184_path(assigns(:post184))
  end

  test "should show post184" do
    get :show, :id => @post184.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post184.to_param
    assert_response :success
  end

  test "should update post184" do
    put :update, :id => @post184.to_param, :post184 => @post184.attributes
    assert_redirected_to post184_path(assigns(:post184))
  end

  test "should destroy post184" do
    assert_difference('Post184.count', -1) do
      delete :destroy, :id => @post184.to_param
    end

    assert_redirected_to post184s_path
  end
end
