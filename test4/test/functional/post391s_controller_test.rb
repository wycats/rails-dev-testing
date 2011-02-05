require 'test_helper'

class Post391sControllerTest < ActionController::TestCase
  setup do
    @post391 = post391s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post391s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post391" do
    assert_difference('Post391.count') do
      post :create, :post391 => @post391.attributes
    end

    assert_redirected_to post391_path(assigns(:post391))
  end

  test "should show post391" do
    get :show, :id => @post391.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post391.to_param
    assert_response :success
  end

  test "should update post391" do
    put :update, :id => @post391.to_param, :post391 => @post391.attributes
    assert_redirected_to post391_path(assigns(:post391))
  end

  test "should destroy post391" do
    assert_difference('Post391.count', -1) do
      delete :destroy, :id => @post391.to_param
    end

    assert_redirected_to post391s_path
  end
end
