require 'test_helper'

class Post353sControllerTest < ActionController::TestCase
  setup do
    @post353 = post353s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post353s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post353" do
    assert_difference('Post353.count') do
      post :create, :post353 => @post353.attributes
    end

    assert_redirected_to post353_path(assigns(:post353))
  end

  test "should show post353" do
    get :show, :id => @post353.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post353.to_param
    assert_response :success
  end

  test "should update post353" do
    put :update, :id => @post353.to_param, :post353 => @post353.attributes
    assert_redirected_to post353_path(assigns(:post353))
  end

  test "should destroy post353" do
    assert_difference('Post353.count', -1) do
      delete :destroy, :id => @post353.to_param
    end

    assert_redirected_to post353s_path
  end
end
