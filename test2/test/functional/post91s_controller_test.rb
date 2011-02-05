require 'test_helper'

class Post91sControllerTest < ActionController::TestCase
  setup do
    @post91 = post91s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post91s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post91" do
    assert_difference('Post91.count') do
      post :create, :post91 => @post91.attributes
    end

    assert_redirected_to post91_path(assigns(:post91))
  end

  test "should show post91" do
    get :show, :id => @post91.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post91.to_param
    assert_response :success
  end

  test "should update post91" do
    put :update, :id => @post91.to_param, :post91 => @post91.attributes
    assert_redirected_to post91_path(assigns(:post91))
  end

  test "should destroy post91" do
    assert_difference('Post91.count', -1) do
      delete :destroy, :id => @post91.to_param
    end

    assert_redirected_to post91s_path
  end
end
