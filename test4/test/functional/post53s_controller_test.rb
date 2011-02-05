require 'test_helper'

class Post53sControllerTest < ActionController::TestCase
  setup do
    @post53 = post53s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post53s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post53" do
    assert_difference('Post53.count') do
      post :create, :post53 => @post53.attributes
    end

    assert_redirected_to post53_path(assigns(:post53))
  end

  test "should show post53" do
    get :show, :id => @post53.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post53.to_param
    assert_response :success
  end

  test "should update post53" do
    put :update, :id => @post53.to_param, :post53 => @post53.attributes
    assert_redirected_to post53_path(assigns(:post53))
  end

  test "should destroy post53" do
    assert_difference('Post53.count', -1) do
      delete :destroy, :id => @post53.to_param
    end

    assert_redirected_to post53s_path
  end
end
