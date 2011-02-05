require 'test_helper'

class Post390sControllerTest < ActionController::TestCase
  setup do
    @post390 = post390s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post390s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post390" do
    assert_difference('Post390.count') do
      post :create, :post390 => @post390.attributes
    end

    assert_redirected_to post390_path(assigns(:post390))
  end

  test "should show post390" do
    get :show, :id => @post390.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post390.to_param
    assert_response :success
  end

  test "should update post390" do
    put :update, :id => @post390.to_param, :post390 => @post390.attributes
    assert_redirected_to post390_path(assigns(:post390))
  end

  test "should destroy post390" do
    assert_difference('Post390.count', -1) do
      delete :destroy, :id => @post390.to_param
    end

    assert_redirected_to post390s_path
  end
end
