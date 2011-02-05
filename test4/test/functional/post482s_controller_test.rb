require 'test_helper'

class Post482sControllerTest < ActionController::TestCase
  setup do
    @post482 = post482s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post482s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post482" do
    assert_difference('Post482.count') do
      post :create, :post482 => @post482.attributes
    end

    assert_redirected_to post482_path(assigns(:post482))
  end

  test "should show post482" do
    get :show, :id => @post482.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post482.to_param
    assert_response :success
  end

  test "should update post482" do
    put :update, :id => @post482.to_param, :post482 => @post482.attributes
    assert_redirected_to post482_path(assigns(:post482))
  end

  test "should destroy post482" do
    assert_difference('Post482.count', -1) do
      delete :destroy, :id => @post482.to_param
    end

    assert_redirected_to post482s_path
  end
end
