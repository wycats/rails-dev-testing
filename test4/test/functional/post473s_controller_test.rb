require 'test_helper'

class Post473sControllerTest < ActionController::TestCase
  setup do
    @post473 = post473s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post473s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post473" do
    assert_difference('Post473.count') do
      post :create, :post473 => @post473.attributes
    end

    assert_redirected_to post473_path(assigns(:post473))
  end

  test "should show post473" do
    get :show, :id => @post473.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post473.to_param
    assert_response :success
  end

  test "should update post473" do
    put :update, :id => @post473.to_param, :post473 => @post473.attributes
    assert_redirected_to post473_path(assigns(:post473))
  end

  test "should destroy post473" do
    assert_difference('Post473.count', -1) do
      delete :destroy, :id => @post473.to_param
    end

    assert_redirected_to post473s_path
  end
end
