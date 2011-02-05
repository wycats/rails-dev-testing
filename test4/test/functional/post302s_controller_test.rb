require 'test_helper'

class Post302sControllerTest < ActionController::TestCase
  setup do
    @post302 = post302s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post302s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post302" do
    assert_difference('Post302.count') do
      post :create, :post302 => @post302.attributes
    end

    assert_redirected_to post302_path(assigns(:post302))
  end

  test "should show post302" do
    get :show, :id => @post302.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post302.to_param
    assert_response :success
  end

  test "should update post302" do
    put :update, :id => @post302.to_param, :post302 => @post302.attributes
    assert_redirected_to post302_path(assigns(:post302))
  end

  test "should destroy post302" do
    assert_difference('Post302.count', -1) do
      delete :destroy, :id => @post302.to_param
    end

    assert_redirected_to post302s_path
  end
end
