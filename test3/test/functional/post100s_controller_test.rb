require 'test_helper'

class Post100sControllerTest < ActionController::TestCase
  setup do
    @post100 = post100s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post100s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post100" do
    assert_difference('Post100.count') do
      post :create, :post100 => @post100.attributes
    end

    assert_redirected_to post100_path(assigns(:post100))
  end

  test "should show post100" do
    get :show, :id => @post100.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post100.to_param
    assert_response :success
  end

  test "should update post100" do
    put :update, :id => @post100.to_param, :post100 => @post100.attributes
    assert_redirected_to post100_path(assigns(:post100))
  end

  test "should destroy post100" do
    assert_difference('Post100.count', -1) do
      delete :destroy, :id => @post100.to_param
    end

    assert_redirected_to post100s_path
  end
end
