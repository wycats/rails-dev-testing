require 'test_helper'

class Post74sControllerTest < ActionController::TestCase
  setup do
    @post74 = post74s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post74s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post74" do
    assert_difference('Post74.count') do
      post :create, :post74 => @post74.attributes
    end

    assert_redirected_to post74_path(assigns(:post74))
  end

  test "should show post74" do
    get :show, :id => @post74.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post74.to_param
    assert_response :success
  end

  test "should update post74" do
    put :update, :id => @post74.to_param, :post74 => @post74.attributes
    assert_redirected_to post74_path(assigns(:post74))
  end

  test "should destroy post74" do
    assert_difference('Post74.count', -1) do
      delete :destroy, :id => @post74.to_param
    end

    assert_redirected_to post74s_path
  end
end
