require 'test_helper'

class Post375sControllerTest < ActionController::TestCase
  setup do
    @post375 = post375s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post375s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post375" do
    assert_difference('Post375.count') do
      post :create, :post375 => @post375.attributes
    end

    assert_redirected_to post375_path(assigns(:post375))
  end

  test "should show post375" do
    get :show, :id => @post375.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post375.to_param
    assert_response :success
  end

  test "should update post375" do
    put :update, :id => @post375.to_param, :post375 => @post375.attributes
    assert_redirected_to post375_path(assigns(:post375))
  end

  test "should destroy post375" do
    assert_difference('Post375.count', -1) do
      delete :destroy, :id => @post375.to_param
    end

    assert_redirected_to post375s_path
  end
end
