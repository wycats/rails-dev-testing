require 'test_helper'

class Post197sControllerTest < ActionController::TestCase
  setup do
    @post197 = post197s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post197s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post197" do
    assert_difference('Post197.count') do
      post :create, :post197 => @post197.attributes
    end

    assert_redirected_to post197_path(assigns(:post197))
  end

  test "should show post197" do
    get :show, :id => @post197.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post197.to_param
    assert_response :success
  end

  test "should update post197" do
    put :update, :id => @post197.to_param, :post197 => @post197.attributes
    assert_redirected_to post197_path(assigns(:post197))
  end

  test "should destroy post197" do
    assert_difference('Post197.count', -1) do
      delete :destroy, :id => @post197.to_param
    end

    assert_redirected_to post197s_path
  end
end
