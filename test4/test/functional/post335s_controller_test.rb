require 'test_helper'

class Post335sControllerTest < ActionController::TestCase
  setup do
    @post335 = post335s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post335s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post335" do
    assert_difference('Post335.count') do
      post :create, :post335 => @post335.attributes
    end

    assert_redirected_to post335_path(assigns(:post335))
  end

  test "should show post335" do
    get :show, :id => @post335.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post335.to_param
    assert_response :success
  end

  test "should update post335" do
    put :update, :id => @post335.to_param, :post335 => @post335.attributes
    assert_redirected_to post335_path(assigns(:post335))
  end

  test "should destroy post335" do
    assert_difference('Post335.count', -1) do
      delete :destroy, :id => @post335.to_param
    end

    assert_redirected_to post335s_path
  end
end
