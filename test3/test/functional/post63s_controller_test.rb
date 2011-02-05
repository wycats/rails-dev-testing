require 'test_helper'

class Post63sControllerTest < ActionController::TestCase
  setup do
    @post63 = post63s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post63s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post63" do
    assert_difference('Post63.count') do
      post :create, :post63 => @post63.attributes
    end

    assert_redirected_to post63_path(assigns(:post63))
  end

  test "should show post63" do
    get :show, :id => @post63.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post63.to_param
    assert_response :success
  end

  test "should update post63" do
    put :update, :id => @post63.to_param, :post63 => @post63.attributes
    assert_redirected_to post63_path(assigns(:post63))
  end

  test "should destroy post63" do
    assert_difference('Post63.count', -1) do
      delete :destroy, :id => @post63.to_param
    end

    assert_redirected_to post63s_path
  end
end
