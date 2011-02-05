require 'test_helper'

class Post486sControllerTest < ActionController::TestCase
  setup do
    @post486 = post486s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post486s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post486" do
    assert_difference('Post486.count') do
      post :create, :post486 => @post486.attributes
    end

    assert_redirected_to post486_path(assigns(:post486))
  end

  test "should show post486" do
    get :show, :id => @post486.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post486.to_param
    assert_response :success
  end

  test "should update post486" do
    put :update, :id => @post486.to_param, :post486 => @post486.attributes
    assert_redirected_to post486_path(assigns(:post486))
  end

  test "should destroy post486" do
    assert_difference('Post486.count', -1) do
      delete :destroy, :id => @post486.to_param
    end

    assert_redirected_to post486s_path
  end
end
