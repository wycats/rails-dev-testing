require 'test_helper'

class Post489sControllerTest < ActionController::TestCase
  setup do
    @post489 = post489s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post489s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post489" do
    assert_difference('Post489.count') do
      post :create, :post489 => @post489.attributes
    end

    assert_redirected_to post489_path(assigns(:post489))
  end

  test "should show post489" do
    get :show, :id => @post489.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post489.to_param
    assert_response :success
  end

  test "should update post489" do
    put :update, :id => @post489.to_param, :post489 => @post489.attributes
    assert_redirected_to post489_path(assigns(:post489))
  end

  test "should destroy post489" do
    assert_difference('Post489.count', -1) do
      delete :destroy, :id => @post489.to_param
    end

    assert_redirected_to post489s_path
  end
end
