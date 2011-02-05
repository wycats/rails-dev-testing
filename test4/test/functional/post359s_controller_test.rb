require 'test_helper'

class Post359sControllerTest < ActionController::TestCase
  setup do
    @post359 = post359s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post359s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post359" do
    assert_difference('Post359.count') do
      post :create, :post359 => @post359.attributes
    end

    assert_redirected_to post359_path(assigns(:post359))
  end

  test "should show post359" do
    get :show, :id => @post359.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post359.to_param
    assert_response :success
  end

  test "should update post359" do
    put :update, :id => @post359.to_param, :post359 => @post359.attributes
    assert_redirected_to post359_path(assigns(:post359))
  end

  test "should destroy post359" do
    assert_difference('Post359.count', -1) do
      delete :destroy, :id => @post359.to_param
    end

    assert_redirected_to post359s_path
  end
end
