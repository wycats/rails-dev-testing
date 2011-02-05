require 'test_helper'

class Post467sControllerTest < ActionController::TestCase
  setup do
    @post467 = post467s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post467s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post467" do
    assert_difference('Post467.count') do
      post :create, :post467 => @post467.attributes
    end

    assert_redirected_to post467_path(assigns(:post467))
  end

  test "should show post467" do
    get :show, :id => @post467.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post467.to_param
    assert_response :success
  end

  test "should update post467" do
    put :update, :id => @post467.to_param, :post467 => @post467.attributes
    assert_redirected_to post467_path(assigns(:post467))
  end

  test "should destroy post467" do
    assert_difference('Post467.count', -1) do
      delete :destroy, :id => @post467.to_param
    end

    assert_redirected_to post467s_path
  end
end
