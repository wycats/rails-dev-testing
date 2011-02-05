require 'test_helper'

class Post466sControllerTest < ActionController::TestCase
  setup do
    @post466 = post466s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post466s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post466" do
    assert_difference('Post466.count') do
      post :create, :post466 => @post466.attributes
    end

    assert_redirected_to post466_path(assigns(:post466))
  end

  test "should show post466" do
    get :show, :id => @post466.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post466.to_param
    assert_response :success
  end

  test "should update post466" do
    put :update, :id => @post466.to_param, :post466 => @post466.attributes
    assert_redirected_to post466_path(assigns(:post466))
  end

  test "should destroy post466" do
    assert_difference('Post466.count', -1) do
      delete :destroy, :id => @post466.to_param
    end

    assert_redirected_to post466s_path
  end
end
