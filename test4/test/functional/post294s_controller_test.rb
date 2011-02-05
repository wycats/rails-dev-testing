require 'test_helper'

class Post294sControllerTest < ActionController::TestCase
  setup do
    @post294 = post294s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post294s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post294" do
    assert_difference('Post294.count') do
      post :create, :post294 => @post294.attributes
    end

    assert_redirected_to post294_path(assigns(:post294))
  end

  test "should show post294" do
    get :show, :id => @post294.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post294.to_param
    assert_response :success
  end

  test "should update post294" do
    put :update, :id => @post294.to_param, :post294 => @post294.attributes
    assert_redirected_to post294_path(assigns(:post294))
  end

  test "should destroy post294" do
    assert_difference('Post294.count', -1) do
      delete :destroy, :id => @post294.to_param
    end

    assert_redirected_to post294s_path
  end
end
