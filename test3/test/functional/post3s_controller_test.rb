require 'test_helper'

class Post3sControllerTest < ActionController::TestCase
  setup do
    @post3 = post3s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post3s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post3" do
    assert_difference('Post3.count') do
      post :create, :post3 => @post3.attributes
    end

    assert_redirected_to post3_path(assigns(:post3))
  end

  test "should show post3" do
    get :show, :id => @post3.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post3.to_param
    assert_response :success
  end

  test "should update post3" do
    put :update, :id => @post3.to_param, :post3 => @post3.attributes
    assert_redirected_to post3_path(assigns(:post3))
  end

  test "should destroy post3" do
    assert_difference('Post3.count', -1) do
      delete :destroy, :id => @post3.to_param
    end

    assert_redirected_to post3s_path
  end
end
