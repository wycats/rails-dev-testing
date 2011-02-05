require 'test_helper'

class Post62sControllerTest < ActionController::TestCase
  setup do
    @post62 = post62s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post62s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post62" do
    assert_difference('Post62.count') do
      post :create, :post62 => @post62.attributes
    end

    assert_redirected_to post62_path(assigns(:post62))
  end

  test "should show post62" do
    get :show, :id => @post62.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post62.to_param
    assert_response :success
  end

  test "should update post62" do
    put :update, :id => @post62.to_param, :post62 => @post62.attributes
    assert_redirected_to post62_path(assigns(:post62))
  end

  test "should destroy post62" do
    assert_difference('Post62.count', -1) do
      delete :destroy, :id => @post62.to_param
    end

    assert_redirected_to post62s_path
  end
end
