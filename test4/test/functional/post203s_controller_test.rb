require 'test_helper'

class Post203sControllerTest < ActionController::TestCase
  setup do
    @post203 = post203s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post203s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post203" do
    assert_difference('Post203.count') do
      post :create, :post203 => @post203.attributes
    end

    assert_redirected_to post203_path(assigns(:post203))
  end

  test "should show post203" do
    get :show, :id => @post203.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post203.to_param
    assert_response :success
  end

  test "should update post203" do
    put :update, :id => @post203.to_param, :post203 => @post203.attributes
    assert_redirected_to post203_path(assigns(:post203))
  end

  test "should destroy post203" do
    assert_difference('Post203.count', -1) do
      delete :destroy, :id => @post203.to_param
    end

    assert_redirected_to post203s_path
  end
end
