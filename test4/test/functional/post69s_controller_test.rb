require 'test_helper'

class Post69sControllerTest < ActionController::TestCase
  setup do
    @post69 = post69s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post69s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post69" do
    assert_difference('Post69.count') do
      post :create, :post69 => @post69.attributes
    end

    assert_redirected_to post69_path(assigns(:post69))
  end

  test "should show post69" do
    get :show, :id => @post69.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post69.to_param
    assert_response :success
  end

  test "should update post69" do
    put :update, :id => @post69.to_param, :post69 => @post69.attributes
    assert_redirected_to post69_path(assigns(:post69))
  end

  test "should destroy post69" do
    assert_difference('Post69.count', -1) do
      delete :destroy, :id => @post69.to_param
    end

    assert_redirected_to post69s_path
  end
end
