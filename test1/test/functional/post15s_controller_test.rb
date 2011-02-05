require 'test_helper'

class Post15sControllerTest < ActionController::TestCase
  setup do
    @post15 = post15s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post15s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post15" do
    assert_difference('Post15.count') do
      post :create, :post15 => @post15.attributes
    end

    assert_redirected_to post15_path(assigns(:post15))
  end

  test "should show post15" do
    get :show, :id => @post15.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post15.to_param
    assert_response :success
  end

  test "should update post15" do
    put :update, :id => @post15.to_param, :post15 => @post15.attributes
    assert_redirected_to post15_path(assigns(:post15))
  end

  test "should destroy post15" do
    assert_difference('Post15.count', -1) do
      delete :destroy, :id => @post15.to_param
    end

    assert_redirected_to post15s_path
  end
end
