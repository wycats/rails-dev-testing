require 'test_helper'

class Post136sControllerTest < ActionController::TestCase
  setup do
    @post136 = post136s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post136s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post136" do
    assert_difference('Post136.count') do
      post :create, :post136 => @post136.attributes
    end

    assert_redirected_to post136_path(assigns(:post136))
  end

  test "should show post136" do
    get :show, :id => @post136.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post136.to_param
    assert_response :success
  end

  test "should update post136" do
    put :update, :id => @post136.to_param, :post136 => @post136.attributes
    assert_redirected_to post136_path(assigns(:post136))
  end

  test "should destroy post136" do
    assert_difference('Post136.count', -1) do
      delete :destroy, :id => @post136.to_param
    end

    assert_redirected_to post136s_path
  end
end
