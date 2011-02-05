require 'test_helper'

class Post80sControllerTest < ActionController::TestCase
  setup do
    @post80 = post80s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post80s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post80" do
    assert_difference('Post80.count') do
      post :create, :post80 => @post80.attributes
    end

    assert_redirected_to post80_path(assigns(:post80))
  end

  test "should show post80" do
    get :show, :id => @post80.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post80.to_param
    assert_response :success
  end

  test "should update post80" do
    put :update, :id => @post80.to_param, :post80 => @post80.attributes
    assert_redirected_to post80_path(assigns(:post80))
  end

  test "should destroy post80" do
    assert_difference('Post80.count', -1) do
      delete :destroy, :id => @post80.to_param
    end

    assert_redirected_to post80s_path
  end
end
