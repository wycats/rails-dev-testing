require 'test_helper'

class Post342sControllerTest < ActionController::TestCase
  setup do
    @post342 = post342s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post342s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post342" do
    assert_difference('Post342.count') do
      post :create, :post342 => @post342.attributes
    end

    assert_redirected_to post342_path(assigns(:post342))
  end

  test "should show post342" do
    get :show, :id => @post342.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post342.to_param
    assert_response :success
  end

  test "should update post342" do
    put :update, :id => @post342.to_param, :post342 => @post342.attributes
    assert_redirected_to post342_path(assigns(:post342))
  end

  test "should destroy post342" do
    assert_difference('Post342.count', -1) do
      delete :destroy, :id => @post342.to_param
    end

    assert_redirected_to post342s_path
  end
end
