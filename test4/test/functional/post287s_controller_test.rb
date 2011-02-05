require 'test_helper'

class Post287sControllerTest < ActionController::TestCase
  setup do
    @post287 = post287s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post287s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post287" do
    assert_difference('Post287.count') do
      post :create, :post287 => @post287.attributes
    end

    assert_redirected_to post287_path(assigns(:post287))
  end

  test "should show post287" do
    get :show, :id => @post287.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post287.to_param
    assert_response :success
  end

  test "should update post287" do
    put :update, :id => @post287.to_param, :post287 => @post287.attributes
    assert_redirected_to post287_path(assigns(:post287))
  end

  test "should destroy post287" do
    assert_difference('Post287.count', -1) do
      delete :destroy, :id => @post287.to_param
    end

    assert_redirected_to post287s_path
  end
end
