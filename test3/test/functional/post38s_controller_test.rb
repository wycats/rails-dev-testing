require 'test_helper'

class Post38sControllerTest < ActionController::TestCase
  setup do
    @post38 = post38s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post38s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post38" do
    assert_difference('Post38.count') do
      post :create, :post38 => @post38.attributes
    end

    assert_redirected_to post38_path(assigns(:post38))
  end

  test "should show post38" do
    get :show, :id => @post38.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post38.to_param
    assert_response :success
  end

  test "should update post38" do
    put :update, :id => @post38.to_param, :post38 => @post38.attributes
    assert_redirected_to post38_path(assigns(:post38))
  end

  test "should destroy post38" do
    assert_difference('Post38.count', -1) do
      delete :destroy, :id => @post38.to_param
    end

    assert_redirected_to post38s_path
  end
end
