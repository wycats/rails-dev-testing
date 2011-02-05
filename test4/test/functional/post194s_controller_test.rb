require 'test_helper'

class Post194sControllerTest < ActionController::TestCase
  setup do
    @post194 = post194s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post194s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post194" do
    assert_difference('Post194.count') do
      post :create, :post194 => @post194.attributes
    end

    assert_redirected_to post194_path(assigns(:post194))
  end

  test "should show post194" do
    get :show, :id => @post194.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post194.to_param
    assert_response :success
  end

  test "should update post194" do
    put :update, :id => @post194.to_param, :post194 => @post194.attributes
    assert_redirected_to post194_path(assigns(:post194))
  end

  test "should destroy post194" do
    assert_difference('Post194.count', -1) do
      delete :destroy, :id => @post194.to_param
    end

    assert_redirected_to post194s_path
  end
end
