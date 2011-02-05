require 'test_helper'

class Post82sControllerTest < ActionController::TestCase
  setup do
    @post82 = post82s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post82s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post82" do
    assert_difference('Post82.count') do
      post :create, :post82 => @post82.attributes
    end

    assert_redirected_to post82_path(assigns(:post82))
  end

  test "should show post82" do
    get :show, :id => @post82.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post82.to_param
    assert_response :success
  end

  test "should update post82" do
    put :update, :id => @post82.to_param, :post82 => @post82.attributes
    assert_redirected_to post82_path(assigns(:post82))
  end

  test "should destroy post82" do
    assert_difference('Post82.count', -1) do
      delete :destroy, :id => @post82.to_param
    end

    assert_redirected_to post82s_path
  end
end
