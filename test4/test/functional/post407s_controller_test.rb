require 'test_helper'

class Post407sControllerTest < ActionController::TestCase
  setup do
    @post407 = post407s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post407s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post407" do
    assert_difference('Post407.count') do
      post :create, :post407 => @post407.attributes
    end

    assert_redirected_to post407_path(assigns(:post407))
  end

  test "should show post407" do
    get :show, :id => @post407.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post407.to_param
    assert_response :success
  end

  test "should update post407" do
    put :update, :id => @post407.to_param, :post407 => @post407.attributes
    assert_redirected_to post407_path(assigns(:post407))
  end

  test "should destroy post407" do
    assert_difference('Post407.count', -1) do
      delete :destroy, :id => @post407.to_param
    end

    assert_redirected_to post407s_path
  end
end
