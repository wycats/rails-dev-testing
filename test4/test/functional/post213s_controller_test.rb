require 'test_helper'

class Post213sControllerTest < ActionController::TestCase
  setup do
    @post213 = post213s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post213s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post213" do
    assert_difference('Post213.count') do
      post :create, :post213 => @post213.attributes
    end

    assert_redirected_to post213_path(assigns(:post213))
  end

  test "should show post213" do
    get :show, :id => @post213.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post213.to_param
    assert_response :success
  end

  test "should update post213" do
    put :update, :id => @post213.to_param, :post213 => @post213.attributes
    assert_redirected_to post213_path(assigns(:post213))
  end

  test "should destroy post213" do
    assert_difference('Post213.count', -1) do
      delete :destroy, :id => @post213.to_param
    end

    assert_redirected_to post213s_path
  end
end
