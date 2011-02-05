require 'test_helper'

class Post345sControllerTest < ActionController::TestCase
  setup do
    @post345 = post345s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post345s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post345" do
    assert_difference('Post345.count') do
      post :create, :post345 => @post345.attributes
    end

    assert_redirected_to post345_path(assigns(:post345))
  end

  test "should show post345" do
    get :show, :id => @post345.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post345.to_param
    assert_response :success
  end

  test "should update post345" do
    put :update, :id => @post345.to_param, :post345 => @post345.attributes
    assert_redirected_to post345_path(assigns(:post345))
  end

  test "should destroy post345" do
    assert_difference('Post345.count', -1) do
      delete :destroy, :id => @post345.to_param
    end

    assert_redirected_to post345s_path
  end
end
