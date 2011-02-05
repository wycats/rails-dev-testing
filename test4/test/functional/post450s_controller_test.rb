require 'test_helper'

class Post450sControllerTest < ActionController::TestCase
  setup do
    @post450 = post450s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post450s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post450" do
    assert_difference('Post450.count') do
      post :create, :post450 => @post450.attributes
    end

    assert_redirected_to post450_path(assigns(:post450))
  end

  test "should show post450" do
    get :show, :id => @post450.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post450.to_param
    assert_response :success
  end

  test "should update post450" do
    put :update, :id => @post450.to_param, :post450 => @post450.attributes
    assert_redirected_to post450_path(assigns(:post450))
  end

  test "should destroy post450" do
    assert_difference('Post450.count', -1) do
      delete :destroy, :id => @post450.to_param
    end

    assert_redirected_to post450s_path
  end
end
