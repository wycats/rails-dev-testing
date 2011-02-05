require 'test_helper'

class Post427sControllerTest < ActionController::TestCase
  setup do
    @post427 = post427s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post427s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post427" do
    assert_difference('Post427.count') do
      post :create, :post427 => @post427.attributes
    end

    assert_redirected_to post427_path(assigns(:post427))
  end

  test "should show post427" do
    get :show, :id => @post427.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post427.to_param
    assert_response :success
  end

  test "should update post427" do
    put :update, :id => @post427.to_param, :post427 => @post427.attributes
    assert_redirected_to post427_path(assigns(:post427))
  end

  test "should destroy post427" do
    assert_difference('Post427.count', -1) do
      delete :destroy, :id => @post427.to_param
    end

    assert_redirected_to post427s_path
  end
end
