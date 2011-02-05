require 'test_helper'

class Post442sControllerTest < ActionController::TestCase
  setup do
    @post442 = post442s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post442s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post442" do
    assert_difference('Post442.count') do
      post :create, :post442 => @post442.attributes
    end

    assert_redirected_to post442_path(assigns(:post442))
  end

  test "should show post442" do
    get :show, :id => @post442.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post442.to_param
    assert_response :success
  end

  test "should update post442" do
    put :update, :id => @post442.to_param, :post442 => @post442.attributes
    assert_redirected_to post442_path(assigns(:post442))
  end

  test "should destroy post442" do
    assert_difference('Post442.count', -1) do
      delete :destroy, :id => @post442.to_param
    end

    assert_redirected_to post442s_path
  end
end
