require 'test_helper'

class Post443sControllerTest < ActionController::TestCase
  setup do
    @post443 = post443s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post443s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post443" do
    assert_difference('Post443.count') do
      post :create, :post443 => @post443.attributes
    end

    assert_redirected_to post443_path(assigns(:post443))
  end

  test "should show post443" do
    get :show, :id => @post443.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post443.to_param
    assert_response :success
  end

  test "should update post443" do
    put :update, :id => @post443.to_param, :post443 => @post443.attributes
    assert_redirected_to post443_path(assigns(:post443))
  end

  test "should destroy post443" do
    assert_difference('Post443.count', -1) do
      delete :destroy, :id => @post443.to_param
    end

    assert_redirected_to post443s_path
  end
end
