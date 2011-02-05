require 'test_helper'

class Post218sControllerTest < ActionController::TestCase
  setup do
    @post218 = post218s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post218s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post218" do
    assert_difference('Post218.count') do
      post :create, :post218 => @post218.attributes
    end

    assert_redirected_to post218_path(assigns(:post218))
  end

  test "should show post218" do
    get :show, :id => @post218.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post218.to_param
    assert_response :success
  end

  test "should update post218" do
    put :update, :id => @post218.to_param, :post218 => @post218.attributes
    assert_redirected_to post218_path(assigns(:post218))
  end

  test "should destroy post218" do
    assert_difference('Post218.count', -1) do
      delete :destroy, :id => @post218.to_param
    end

    assert_redirected_to post218s_path
  end
end
