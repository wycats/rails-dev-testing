require 'test_helper'

class Post259sControllerTest < ActionController::TestCase
  setup do
    @post259 = post259s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post259s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post259" do
    assert_difference('Post259.count') do
      post :create, :post259 => @post259.attributes
    end

    assert_redirected_to post259_path(assigns(:post259))
  end

  test "should show post259" do
    get :show, :id => @post259.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post259.to_param
    assert_response :success
  end

  test "should update post259" do
    put :update, :id => @post259.to_param, :post259 => @post259.attributes
    assert_redirected_to post259_path(assigns(:post259))
  end

  test "should destroy post259" do
    assert_difference('Post259.count', -1) do
      delete :destroy, :id => @post259.to_param
    end

    assert_redirected_to post259s_path
  end
end
