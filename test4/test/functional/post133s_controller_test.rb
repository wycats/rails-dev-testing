require 'test_helper'

class Post133sControllerTest < ActionController::TestCase
  setup do
    @post133 = post133s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post133s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post133" do
    assert_difference('Post133.count') do
      post :create, :post133 => @post133.attributes
    end

    assert_redirected_to post133_path(assigns(:post133))
  end

  test "should show post133" do
    get :show, :id => @post133.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post133.to_param
    assert_response :success
  end

  test "should update post133" do
    put :update, :id => @post133.to_param, :post133 => @post133.attributes
    assert_redirected_to post133_path(assigns(:post133))
  end

  test "should destroy post133" do
    assert_difference('Post133.count', -1) do
      delete :destroy, :id => @post133.to_param
    end

    assert_redirected_to post133s_path
  end
end
