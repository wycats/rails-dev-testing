require 'test_helper'

class Post454sControllerTest < ActionController::TestCase
  setup do
    @post454 = post454s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post454s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post454" do
    assert_difference('Post454.count') do
      post :create, :post454 => @post454.attributes
    end

    assert_redirected_to post454_path(assigns(:post454))
  end

  test "should show post454" do
    get :show, :id => @post454.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post454.to_param
    assert_response :success
  end

  test "should update post454" do
    put :update, :id => @post454.to_param, :post454 => @post454.attributes
    assert_redirected_to post454_path(assigns(:post454))
  end

  test "should destroy post454" do
    assert_difference('Post454.count', -1) do
      delete :destroy, :id => @post454.to_param
    end

    assert_redirected_to post454s_path
  end
end
