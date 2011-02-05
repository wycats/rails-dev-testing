require 'test_helper'

class Post51sControllerTest < ActionController::TestCase
  setup do
    @post51 = post51s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post51s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post51" do
    assert_difference('Post51.count') do
      post :create, :post51 => @post51.attributes
    end

    assert_redirected_to post51_path(assigns(:post51))
  end

  test "should show post51" do
    get :show, :id => @post51.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post51.to_param
    assert_response :success
  end

  test "should update post51" do
    put :update, :id => @post51.to_param, :post51 => @post51.attributes
    assert_redirected_to post51_path(assigns(:post51))
  end

  test "should destroy post51" do
    assert_difference('Post51.count', -1) do
      delete :destroy, :id => @post51.to_param
    end

    assert_redirected_to post51s_path
  end
end
