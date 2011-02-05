require 'test_helper'

class Post350sControllerTest < ActionController::TestCase
  setup do
    @post350 = post350s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post350s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post350" do
    assert_difference('Post350.count') do
      post :create, :post350 => @post350.attributes
    end

    assert_redirected_to post350_path(assigns(:post350))
  end

  test "should show post350" do
    get :show, :id => @post350.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post350.to_param
    assert_response :success
  end

  test "should update post350" do
    put :update, :id => @post350.to_param, :post350 => @post350.attributes
    assert_redirected_to post350_path(assigns(:post350))
  end

  test "should destroy post350" do
    assert_difference('Post350.count', -1) do
      delete :destroy, :id => @post350.to_param
    end

    assert_redirected_to post350s_path
  end
end
