require 'test_helper'

class Post412sControllerTest < ActionController::TestCase
  setup do
    @post412 = post412s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post412s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post412" do
    assert_difference('Post412.count') do
      post :create, :post412 => @post412.attributes
    end

    assert_redirected_to post412_path(assigns(:post412))
  end

  test "should show post412" do
    get :show, :id => @post412.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post412.to_param
    assert_response :success
  end

  test "should update post412" do
    put :update, :id => @post412.to_param, :post412 => @post412.attributes
    assert_redirected_to post412_path(assigns(:post412))
  end

  test "should destroy post412" do
    assert_difference('Post412.count', -1) do
      delete :destroy, :id => @post412.to_param
    end

    assert_redirected_to post412s_path
  end
end
