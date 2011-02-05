require 'test_helper'

class Post181sControllerTest < ActionController::TestCase
  setup do
    @post181 = post181s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post181s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post181" do
    assert_difference('Post181.count') do
      post :create, :post181 => @post181.attributes
    end

    assert_redirected_to post181_path(assigns(:post181))
  end

  test "should show post181" do
    get :show, :id => @post181.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post181.to_param
    assert_response :success
  end

  test "should update post181" do
    put :update, :id => @post181.to_param, :post181 => @post181.attributes
    assert_redirected_to post181_path(assigns(:post181))
  end

  test "should destroy post181" do
    assert_difference('Post181.count', -1) do
      delete :destroy, :id => @post181.to_param
    end

    assert_redirected_to post181s_path
  end
end
