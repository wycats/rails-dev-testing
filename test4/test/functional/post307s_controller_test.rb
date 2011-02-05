require 'test_helper'

class Post307sControllerTest < ActionController::TestCase
  setup do
    @post307 = post307s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post307s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post307" do
    assert_difference('Post307.count') do
      post :create, :post307 => @post307.attributes
    end

    assert_redirected_to post307_path(assigns(:post307))
  end

  test "should show post307" do
    get :show, :id => @post307.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post307.to_param
    assert_response :success
  end

  test "should update post307" do
    put :update, :id => @post307.to_param, :post307 => @post307.attributes
    assert_redirected_to post307_path(assigns(:post307))
  end

  test "should destroy post307" do
    assert_difference('Post307.count', -1) do
      delete :destroy, :id => @post307.to_param
    end

    assert_redirected_to post307s_path
  end
end
