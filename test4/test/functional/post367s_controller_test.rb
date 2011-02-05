require 'test_helper'

class Post367sControllerTest < ActionController::TestCase
  setup do
    @post367 = post367s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post367s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post367" do
    assert_difference('Post367.count') do
      post :create, :post367 => @post367.attributes
    end

    assert_redirected_to post367_path(assigns(:post367))
  end

  test "should show post367" do
    get :show, :id => @post367.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post367.to_param
    assert_response :success
  end

  test "should update post367" do
    put :update, :id => @post367.to_param, :post367 => @post367.attributes
    assert_redirected_to post367_path(assigns(:post367))
  end

  test "should destroy post367" do
    assert_difference('Post367.count', -1) do
      delete :destroy, :id => @post367.to_param
    end

    assert_redirected_to post367s_path
  end
end
