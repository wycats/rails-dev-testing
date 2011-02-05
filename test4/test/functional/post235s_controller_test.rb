require 'test_helper'

class Post235sControllerTest < ActionController::TestCase
  setup do
    @post235 = post235s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post235s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post235" do
    assert_difference('Post235.count') do
      post :create, :post235 => @post235.attributes
    end

    assert_redirected_to post235_path(assigns(:post235))
  end

  test "should show post235" do
    get :show, :id => @post235.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post235.to_param
    assert_response :success
  end

  test "should update post235" do
    put :update, :id => @post235.to_param, :post235 => @post235.attributes
    assert_redirected_to post235_path(assigns(:post235))
  end

  test "should destroy post235" do
    assert_difference('Post235.count', -1) do
      delete :destroy, :id => @post235.to_param
    end

    assert_redirected_to post235s_path
  end
end
