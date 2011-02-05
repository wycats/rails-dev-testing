require 'test_helper'

class Post196sControllerTest < ActionController::TestCase
  setup do
    @post196 = post196s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post196s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post196" do
    assert_difference('Post196.count') do
      post :create, :post196 => @post196.attributes
    end

    assert_redirected_to post196_path(assigns(:post196))
  end

  test "should show post196" do
    get :show, :id => @post196.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post196.to_param
    assert_response :success
  end

  test "should update post196" do
    put :update, :id => @post196.to_param, :post196 => @post196.attributes
    assert_redirected_to post196_path(assigns(:post196))
  end

  test "should destroy post196" do
    assert_difference('Post196.count', -1) do
      delete :destroy, :id => @post196.to_param
    end

    assert_redirected_to post196s_path
  end
end
