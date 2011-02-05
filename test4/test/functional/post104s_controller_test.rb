require 'test_helper'

class Post104sControllerTest < ActionController::TestCase
  setup do
    @post104 = post104s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post104s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post104" do
    assert_difference('Post104.count') do
      post :create, :post104 => @post104.attributes
    end

    assert_redirected_to post104_path(assigns(:post104))
  end

  test "should show post104" do
    get :show, :id => @post104.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post104.to_param
    assert_response :success
  end

  test "should update post104" do
    put :update, :id => @post104.to_param, :post104 => @post104.attributes
    assert_redirected_to post104_path(assigns(:post104))
  end

  test "should destroy post104" do
    assert_difference('Post104.count', -1) do
      delete :destroy, :id => @post104.to_param
    end

    assert_redirected_to post104s_path
  end
end
