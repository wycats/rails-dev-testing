require 'test_helper'

class Post416sControllerTest < ActionController::TestCase
  setup do
    @post416 = post416s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post416s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post416" do
    assert_difference('Post416.count') do
      post :create, :post416 => @post416.attributes
    end

    assert_redirected_to post416_path(assigns(:post416))
  end

  test "should show post416" do
    get :show, :id => @post416.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post416.to_param
    assert_response :success
  end

  test "should update post416" do
    put :update, :id => @post416.to_param, :post416 => @post416.attributes
    assert_redirected_to post416_path(assigns(:post416))
  end

  test "should destroy post416" do
    assert_difference('Post416.count', -1) do
      delete :destroy, :id => @post416.to_param
    end

    assert_redirected_to post416s_path
  end
end
