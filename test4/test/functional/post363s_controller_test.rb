require 'test_helper'

class Post363sControllerTest < ActionController::TestCase
  setup do
    @post363 = post363s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post363s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post363" do
    assert_difference('Post363.count') do
      post :create, :post363 => @post363.attributes
    end

    assert_redirected_to post363_path(assigns(:post363))
  end

  test "should show post363" do
    get :show, :id => @post363.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post363.to_param
    assert_response :success
  end

  test "should update post363" do
    put :update, :id => @post363.to_param, :post363 => @post363.attributes
    assert_redirected_to post363_path(assigns(:post363))
  end

  test "should destroy post363" do
    assert_difference('Post363.count', -1) do
      delete :destroy, :id => @post363.to_param
    end

    assert_redirected_to post363s_path
  end
end
