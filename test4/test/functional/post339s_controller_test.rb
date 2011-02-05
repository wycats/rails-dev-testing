require 'test_helper'

class Post339sControllerTest < ActionController::TestCase
  setup do
    @post339 = post339s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post339s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post339" do
    assert_difference('Post339.count') do
      post :create, :post339 => @post339.attributes
    end

    assert_redirected_to post339_path(assigns(:post339))
  end

  test "should show post339" do
    get :show, :id => @post339.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post339.to_param
    assert_response :success
  end

  test "should update post339" do
    put :update, :id => @post339.to_param, :post339 => @post339.attributes
    assert_redirected_to post339_path(assigns(:post339))
  end

  test "should destroy post339" do
    assert_difference('Post339.count', -1) do
      delete :destroy, :id => @post339.to_param
    end

    assert_redirected_to post339s_path
  end
end
