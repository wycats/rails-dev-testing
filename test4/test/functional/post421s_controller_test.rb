require 'test_helper'

class Post421sControllerTest < ActionController::TestCase
  setup do
    @post421 = post421s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post421s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post421" do
    assert_difference('Post421.count') do
      post :create, :post421 => @post421.attributes
    end

    assert_redirected_to post421_path(assigns(:post421))
  end

  test "should show post421" do
    get :show, :id => @post421.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post421.to_param
    assert_response :success
  end

  test "should update post421" do
    put :update, :id => @post421.to_param, :post421 => @post421.attributes
    assert_redirected_to post421_path(assigns(:post421))
  end

  test "should destroy post421" do
    assert_difference('Post421.count', -1) do
      delete :destroy, :id => @post421.to_param
    end

    assert_redirected_to post421s_path
  end
end
