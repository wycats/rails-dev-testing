require 'test_helper'

class Post277sControllerTest < ActionController::TestCase
  setup do
    @post277 = post277s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post277s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post277" do
    assert_difference('Post277.count') do
      post :create, :post277 => @post277.attributes
    end

    assert_redirected_to post277_path(assigns(:post277))
  end

  test "should show post277" do
    get :show, :id => @post277.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post277.to_param
    assert_response :success
  end

  test "should update post277" do
    put :update, :id => @post277.to_param, :post277 => @post277.attributes
    assert_redirected_to post277_path(assigns(:post277))
  end

  test "should destroy post277" do
    assert_difference('Post277.count', -1) do
      delete :destroy, :id => @post277.to_param
    end

    assert_redirected_to post277s_path
  end
end
