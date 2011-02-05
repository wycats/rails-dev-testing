require 'test_helper'

class Post169sControllerTest < ActionController::TestCase
  setup do
    @post169 = post169s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post169s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post169" do
    assert_difference('Post169.count') do
      post :create, :post169 => @post169.attributes
    end

    assert_redirected_to post169_path(assigns(:post169))
  end

  test "should show post169" do
    get :show, :id => @post169.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post169.to_param
    assert_response :success
  end

  test "should update post169" do
    put :update, :id => @post169.to_param, :post169 => @post169.attributes
    assert_redirected_to post169_path(assigns(:post169))
  end

  test "should destroy post169" do
    assert_difference('Post169.count', -1) do
      delete :destroy, :id => @post169.to_param
    end

    assert_redirected_to post169s_path
  end
end
