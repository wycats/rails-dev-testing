require 'test_helper'

class Post55sControllerTest < ActionController::TestCase
  setup do
    @post55 = post55s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post55s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post55" do
    assert_difference('Post55.count') do
      post :create, :post55 => @post55.attributes
    end

    assert_redirected_to post55_path(assigns(:post55))
  end

  test "should show post55" do
    get :show, :id => @post55.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post55.to_param
    assert_response :success
  end

  test "should update post55" do
    put :update, :id => @post55.to_param, :post55 => @post55.attributes
    assert_redirected_to post55_path(assigns(:post55))
  end

  test "should destroy post55" do
    assert_difference('Post55.count', -1) do
      delete :destroy, :id => @post55.to_param
    end

    assert_redirected_to post55s_path
  end
end
