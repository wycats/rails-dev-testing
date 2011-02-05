require 'test_helper'

class Post394sControllerTest < ActionController::TestCase
  setup do
    @post394 = post394s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post394s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post394" do
    assert_difference('Post394.count') do
      post :create, :post394 => @post394.attributes
    end

    assert_redirected_to post394_path(assigns(:post394))
  end

  test "should show post394" do
    get :show, :id => @post394.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post394.to_param
    assert_response :success
  end

  test "should update post394" do
    put :update, :id => @post394.to_param, :post394 => @post394.attributes
    assert_redirected_to post394_path(assigns(:post394))
  end

  test "should destroy post394" do
    assert_difference('Post394.count', -1) do
      delete :destroy, :id => @post394.to_param
    end

    assert_redirected_to post394s_path
  end
end
