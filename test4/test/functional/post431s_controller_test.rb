require 'test_helper'

class Post431sControllerTest < ActionController::TestCase
  setup do
    @post431 = post431s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post431s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post431" do
    assert_difference('Post431.count') do
      post :create, :post431 => @post431.attributes
    end

    assert_redirected_to post431_path(assigns(:post431))
  end

  test "should show post431" do
    get :show, :id => @post431.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post431.to_param
    assert_response :success
  end

  test "should update post431" do
    put :update, :id => @post431.to_param, :post431 => @post431.attributes
    assert_redirected_to post431_path(assigns(:post431))
  end

  test "should destroy post431" do
    assert_difference('Post431.count', -1) do
      delete :destroy, :id => @post431.to_param
    end

    assert_redirected_to post431s_path
  end
end
