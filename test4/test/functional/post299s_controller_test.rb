require 'test_helper'

class Post299sControllerTest < ActionController::TestCase
  setup do
    @post299 = post299s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post299s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post299" do
    assert_difference('Post299.count') do
      post :create, :post299 => @post299.attributes
    end

    assert_redirected_to post299_path(assigns(:post299))
  end

  test "should show post299" do
    get :show, :id => @post299.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post299.to_param
    assert_response :success
  end

  test "should update post299" do
    put :update, :id => @post299.to_param, :post299 => @post299.attributes
    assert_redirected_to post299_path(assigns(:post299))
  end

  test "should destroy post299" do
    assert_difference('Post299.count', -1) do
      delete :destroy, :id => @post299.to_param
    end

    assert_redirected_to post299s_path
  end
end
