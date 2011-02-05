require 'test_helper'

class Post189sControllerTest < ActionController::TestCase
  setup do
    @post189 = post189s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post189s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post189" do
    assert_difference('Post189.count') do
      post :create, :post189 => @post189.attributes
    end

    assert_redirected_to post189_path(assigns(:post189))
  end

  test "should show post189" do
    get :show, :id => @post189.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post189.to_param
    assert_response :success
  end

  test "should update post189" do
    put :update, :id => @post189.to_param, :post189 => @post189.attributes
    assert_redirected_to post189_path(assigns(:post189))
  end

  test "should destroy post189" do
    assert_difference('Post189.count', -1) do
      delete :destroy, :id => @post189.to_param
    end

    assert_redirected_to post189s_path
  end
end
