require 'test_helper'

class Post199sControllerTest < ActionController::TestCase
  setup do
    @post199 = post199s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post199s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post199" do
    assert_difference('Post199.count') do
      post :create, :post199 => @post199.attributes
    end

    assert_redirected_to post199_path(assigns(:post199))
  end

  test "should show post199" do
    get :show, :id => @post199.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post199.to_param
    assert_response :success
  end

  test "should update post199" do
    put :update, :id => @post199.to_param, :post199 => @post199.attributes
    assert_redirected_to post199_path(assigns(:post199))
  end

  test "should destroy post199" do
    assert_difference('Post199.count', -1) do
      delete :destroy, :id => @post199.to_param
    end

    assert_redirected_to post199s_path
  end
end
