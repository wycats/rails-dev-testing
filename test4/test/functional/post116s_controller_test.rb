require 'test_helper'

class Post116sControllerTest < ActionController::TestCase
  setup do
    @post116 = post116s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post116s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post116" do
    assert_difference('Post116.count') do
      post :create, :post116 => @post116.attributes
    end

    assert_redirected_to post116_path(assigns(:post116))
  end

  test "should show post116" do
    get :show, :id => @post116.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post116.to_param
    assert_response :success
  end

  test "should update post116" do
    put :update, :id => @post116.to_param, :post116 => @post116.attributes
    assert_redirected_to post116_path(assigns(:post116))
  end

  test "should destroy post116" do
    assert_difference('Post116.count', -1) do
      delete :destroy, :id => @post116.to_param
    end

    assert_redirected_to post116s_path
  end
end
