require 'test_helper'

class Post461sControllerTest < ActionController::TestCase
  setup do
    @post461 = post461s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post461s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post461" do
    assert_difference('Post461.count') do
      post :create, :post461 => @post461.attributes
    end

    assert_redirected_to post461_path(assigns(:post461))
  end

  test "should show post461" do
    get :show, :id => @post461.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post461.to_param
    assert_response :success
  end

  test "should update post461" do
    put :update, :id => @post461.to_param, :post461 => @post461.attributes
    assert_redirected_to post461_path(assigns(:post461))
  end

  test "should destroy post461" do
    assert_difference('Post461.count', -1) do
      delete :destroy, :id => @post461.to_param
    end

    assert_redirected_to post461s_path
  end
end
