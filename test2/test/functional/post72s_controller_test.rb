require 'test_helper'

class Post72sControllerTest < ActionController::TestCase
  setup do
    @post72 = post72s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post72s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post72" do
    assert_difference('Post72.count') do
      post :create, :post72 => @post72.attributes
    end

    assert_redirected_to post72_path(assigns(:post72))
  end

  test "should show post72" do
    get :show, :id => @post72.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post72.to_param
    assert_response :success
  end

  test "should update post72" do
    put :update, :id => @post72.to_param, :post72 => @post72.attributes
    assert_redirected_to post72_path(assigns(:post72))
  end

  test "should destroy post72" do
    assert_difference('Post72.count', -1) do
      delete :destroy, :id => @post72.to_param
    end

    assert_redirected_to post72s_path
  end
end
