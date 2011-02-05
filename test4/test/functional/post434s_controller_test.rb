require 'test_helper'

class Post434sControllerTest < ActionController::TestCase
  setup do
    @post434 = post434s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post434s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post434" do
    assert_difference('Post434.count') do
      post :create, :post434 => @post434.attributes
    end

    assert_redirected_to post434_path(assigns(:post434))
  end

  test "should show post434" do
    get :show, :id => @post434.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post434.to_param
    assert_response :success
  end

  test "should update post434" do
    put :update, :id => @post434.to_param, :post434 => @post434.attributes
    assert_redirected_to post434_path(assigns(:post434))
  end

  test "should destroy post434" do
    assert_difference('Post434.count', -1) do
      delete :destroy, :id => @post434.to_param
    end

    assert_redirected_to post434s_path
  end
end
