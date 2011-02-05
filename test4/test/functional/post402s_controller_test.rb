require 'test_helper'

class Post402sControllerTest < ActionController::TestCase
  setup do
    @post402 = post402s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post402s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post402" do
    assert_difference('Post402.count') do
      post :create, :post402 => @post402.attributes
    end

    assert_redirected_to post402_path(assigns(:post402))
  end

  test "should show post402" do
    get :show, :id => @post402.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post402.to_param
    assert_response :success
  end

  test "should update post402" do
    put :update, :id => @post402.to_param, :post402 => @post402.attributes
    assert_redirected_to post402_path(assigns(:post402))
  end

  test "should destroy post402" do
    assert_difference('Post402.count', -1) do
      delete :destroy, :id => @post402.to_param
    end

    assert_redirected_to post402s_path
  end
end
