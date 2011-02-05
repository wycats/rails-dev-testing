require 'test_helper'

class Post393sControllerTest < ActionController::TestCase
  setup do
    @post393 = post393s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post393s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post393" do
    assert_difference('Post393.count') do
      post :create, :post393 => @post393.attributes
    end

    assert_redirected_to post393_path(assigns(:post393))
  end

  test "should show post393" do
    get :show, :id => @post393.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post393.to_param
    assert_response :success
  end

  test "should update post393" do
    put :update, :id => @post393.to_param, :post393 => @post393.attributes
    assert_redirected_to post393_path(assigns(:post393))
  end

  test "should destroy post393" do
    assert_difference('Post393.count', -1) do
      delete :destroy, :id => @post393.to_param
    end

    assert_redirected_to post393s_path
  end
end
