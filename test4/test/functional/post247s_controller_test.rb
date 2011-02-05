require 'test_helper'

class Post247sControllerTest < ActionController::TestCase
  setup do
    @post247 = post247s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post247s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post247" do
    assert_difference('Post247.count') do
      post :create, :post247 => @post247.attributes
    end

    assert_redirected_to post247_path(assigns(:post247))
  end

  test "should show post247" do
    get :show, :id => @post247.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post247.to_param
    assert_response :success
  end

  test "should update post247" do
    put :update, :id => @post247.to_param, :post247 => @post247.attributes
    assert_redirected_to post247_path(assigns(:post247))
  end

  test "should destroy post247" do
    assert_difference('Post247.count', -1) do
      delete :destroy, :id => @post247.to_param
    end

    assert_redirected_to post247s_path
  end
end
