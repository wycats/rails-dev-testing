require 'test_helper'

class Post333sControllerTest < ActionController::TestCase
  setup do
    @post333 = post333s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post333s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post333" do
    assert_difference('Post333.count') do
      post :create, :post333 => @post333.attributes
    end

    assert_redirected_to post333_path(assigns(:post333))
  end

  test "should show post333" do
    get :show, :id => @post333.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post333.to_param
    assert_response :success
  end

  test "should update post333" do
    put :update, :id => @post333.to_param, :post333 => @post333.attributes
    assert_redirected_to post333_path(assigns(:post333))
  end

  test "should destroy post333" do
    assert_difference('Post333.count', -1) do
      delete :destroy, :id => @post333.to_param
    end

    assert_redirected_to post333s_path
  end
end
