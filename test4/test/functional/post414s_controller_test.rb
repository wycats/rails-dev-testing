require 'test_helper'

class Post414sControllerTest < ActionController::TestCase
  setup do
    @post414 = post414s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post414s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post414" do
    assert_difference('Post414.count') do
      post :create, :post414 => @post414.attributes
    end

    assert_redirected_to post414_path(assigns(:post414))
  end

  test "should show post414" do
    get :show, :id => @post414.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post414.to_param
    assert_response :success
  end

  test "should update post414" do
    put :update, :id => @post414.to_param, :post414 => @post414.attributes
    assert_redirected_to post414_path(assigns(:post414))
  end

  test "should destroy post414" do
    assert_difference('Post414.count', -1) do
      delete :destroy, :id => @post414.to_param
    end

    assert_redirected_to post414s_path
  end
end
