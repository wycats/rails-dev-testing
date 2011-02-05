require 'test_helper'

class Post70sControllerTest < ActionController::TestCase
  setup do
    @post70 = post70s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post70s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post70" do
    assert_difference('Post70.count') do
      post :create, :post70 => @post70.attributes
    end

    assert_redirected_to post70_path(assigns(:post70))
  end

  test "should show post70" do
    get :show, :id => @post70.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post70.to_param
    assert_response :success
  end

  test "should update post70" do
    put :update, :id => @post70.to_param, :post70 => @post70.attributes
    assert_redirected_to post70_path(assigns(:post70))
  end

  test "should destroy post70" do
    assert_difference('Post70.count', -1) do
      delete :destroy, :id => @post70.to_param
    end

    assert_redirected_to post70s_path
  end
end
