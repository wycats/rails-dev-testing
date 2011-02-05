require 'test_helper'

class Post432sControllerTest < ActionController::TestCase
  setup do
    @post432 = post432s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post432s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post432" do
    assert_difference('Post432.count') do
      post :create, :post432 => @post432.attributes
    end

    assert_redirected_to post432_path(assigns(:post432))
  end

  test "should show post432" do
    get :show, :id => @post432.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post432.to_param
    assert_response :success
  end

  test "should update post432" do
    put :update, :id => @post432.to_param, :post432 => @post432.attributes
    assert_redirected_to post432_path(assigns(:post432))
  end

  test "should destroy post432" do
    assert_difference('Post432.count', -1) do
      delete :destroy, :id => @post432.to_param
    end

    assert_redirected_to post432s_path
  end
end
