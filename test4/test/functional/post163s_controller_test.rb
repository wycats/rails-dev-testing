require 'test_helper'

class Post163sControllerTest < ActionController::TestCase
  setup do
    @post163 = post163s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post163s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post163" do
    assert_difference('Post163.count') do
      post :create, :post163 => @post163.attributes
    end

    assert_redirected_to post163_path(assigns(:post163))
  end

  test "should show post163" do
    get :show, :id => @post163.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post163.to_param
    assert_response :success
  end

  test "should update post163" do
    put :update, :id => @post163.to_param, :post163 => @post163.attributes
    assert_redirected_to post163_path(assigns(:post163))
  end

  test "should destroy post163" do
    assert_difference('Post163.count', -1) do
      delete :destroy, :id => @post163.to_param
    end

    assert_redirected_to post163s_path
  end
end
