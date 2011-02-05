require 'test_helper'

class Post266sControllerTest < ActionController::TestCase
  setup do
    @post266 = post266s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post266s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post266" do
    assert_difference('Post266.count') do
      post :create, :post266 => @post266.attributes
    end

    assert_redirected_to post266_path(assigns(:post266))
  end

  test "should show post266" do
    get :show, :id => @post266.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post266.to_param
    assert_response :success
  end

  test "should update post266" do
    put :update, :id => @post266.to_param, :post266 => @post266.attributes
    assert_redirected_to post266_path(assigns(:post266))
  end

  test "should destroy post266" do
    assert_difference('Post266.count', -1) do
      delete :destroy, :id => @post266.to_param
    end

    assert_redirected_to post266s_path
  end
end
