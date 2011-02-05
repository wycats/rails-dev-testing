require 'test_helper'

class Post439sControllerTest < ActionController::TestCase
  setup do
    @post439 = post439s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post439s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post439" do
    assert_difference('Post439.count') do
      post :create, :post439 => @post439.attributes
    end

    assert_redirected_to post439_path(assigns(:post439))
  end

  test "should show post439" do
    get :show, :id => @post439.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post439.to_param
    assert_response :success
  end

  test "should update post439" do
    put :update, :id => @post439.to_param, :post439 => @post439.attributes
    assert_redirected_to post439_path(assigns(:post439))
  end

  test "should destroy post439" do
    assert_difference('Post439.count', -1) do
      delete :destroy, :id => @post439.to_param
    end

    assert_redirected_to post439s_path
  end
end
