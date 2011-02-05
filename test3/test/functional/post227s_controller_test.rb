require 'test_helper'

class Post227sControllerTest < ActionController::TestCase
  setup do
    @post227 = post227s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post227s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post227" do
    assert_difference('Post227.count') do
      post :create, :post227 => @post227.attributes
    end

    assert_redirected_to post227_path(assigns(:post227))
  end

  test "should show post227" do
    get :show, :id => @post227.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post227.to_param
    assert_response :success
  end

  test "should update post227" do
    put :update, :id => @post227.to_param, :post227 => @post227.attributes
    assert_redirected_to post227_path(assigns(:post227))
  end

  test "should destroy post227" do
    assert_difference('Post227.count', -1) do
      delete :destroy, :id => @post227.to_param
    end

    assert_redirected_to post227s_path
  end
end
