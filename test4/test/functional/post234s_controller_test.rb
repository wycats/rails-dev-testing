require 'test_helper'

class Post234sControllerTest < ActionController::TestCase
  setup do
    @post234 = post234s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post234s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post234" do
    assert_difference('Post234.count') do
      post :create, :post234 => @post234.attributes
    end

    assert_redirected_to post234_path(assigns(:post234))
  end

  test "should show post234" do
    get :show, :id => @post234.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post234.to_param
    assert_response :success
  end

  test "should update post234" do
    put :update, :id => @post234.to_param, :post234 => @post234.attributes
    assert_redirected_to post234_path(assigns(:post234))
  end

  test "should destroy post234" do
    assert_difference('Post234.count', -1) do
      delete :destroy, :id => @post234.to_param
    end

    assert_redirected_to post234s_path
  end
end
