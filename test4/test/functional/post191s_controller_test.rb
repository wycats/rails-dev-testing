require 'test_helper'

class Post191sControllerTest < ActionController::TestCase
  setup do
    @post191 = post191s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post191s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post191" do
    assert_difference('Post191.count') do
      post :create, :post191 => @post191.attributes
    end

    assert_redirected_to post191_path(assigns(:post191))
  end

  test "should show post191" do
    get :show, :id => @post191.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post191.to_param
    assert_response :success
  end

  test "should update post191" do
    put :update, :id => @post191.to_param, :post191 => @post191.attributes
    assert_redirected_to post191_path(assigns(:post191))
  end

  test "should destroy post191" do
    assert_difference('Post191.count', -1) do
      delete :destroy, :id => @post191.to_param
    end

    assert_redirected_to post191s_path
  end
end
