require 'test_helper'

class Post147sControllerTest < ActionController::TestCase
  setup do
    @post147 = post147s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post147s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post147" do
    assert_difference('Post147.count') do
      post :create, :post147 => @post147.attributes
    end

    assert_redirected_to post147_path(assigns(:post147))
  end

  test "should show post147" do
    get :show, :id => @post147.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post147.to_param
    assert_response :success
  end

  test "should update post147" do
    put :update, :id => @post147.to_param, :post147 => @post147.attributes
    assert_redirected_to post147_path(assigns(:post147))
  end

  test "should destroy post147" do
    assert_difference('Post147.count', -1) do
      delete :destroy, :id => @post147.to_param
    end

    assert_redirected_to post147s_path
  end
end
