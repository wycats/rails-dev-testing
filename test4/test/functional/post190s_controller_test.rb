require 'test_helper'

class Post190sControllerTest < ActionController::TestCase
  setup do
    @post190 = post190s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post190s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post190" do
    assert_difference('Post190.count') do
      post :create, :post190 => @post190.attributes
    end

    assert_redirected_to post190_path(assigns(:post190))
  end

  test "should show post190" do
    get :show, :id => @post190.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post190.to_param
    assert_response :success
  end

  test "should update post190" do
    put :update, :id => @post190.to_param, :post190 => @post190.attributes
    assert_redirected_to post190_path(assigns(:post190))
  end

  test "should destroy post190" do
    assert_difference('Post190.count', -1) do
      delete :destroy, :id => @post190.to_param
    end

    assert_redirected_to post190s_path
  end
end
