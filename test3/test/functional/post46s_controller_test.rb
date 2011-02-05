require 'test_helper'

class Post46sControllerTest < ActionController::TestCase
  setup do
    @post46 = post46s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post46s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post46" do
    assert_difference('Post46.count') do
      post :create, :post46 => @post46.attributes
    end

    assert_redirected_to post46_path(assigns(:post46))
  end

  test "should show post46" do
    get :show, :id => @post46.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post46.to_param
    assert_response :success
  end

  test "should update post46" do
    put :update, :id => @post46.to_param, :post46 => @post46.attributes
    assert_redirected_to post46_path(assigns(:post46))
  end

  test "should destroy post46" do
    assert_difference('Post46.count', -1) do
      delete :destroy, :id => @post46.to_param
    end

    assert_redirected_to post46s_path
  end
end
