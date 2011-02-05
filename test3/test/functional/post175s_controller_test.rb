require 'test_helper'

class Post175sControllerTest < ActionController::TestCase
  setup do
    @post175 = post175s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post175s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post175" do
    assert_difference('Post175.count') do
      post :create, :post175 => @post175.attributes
    end

    assert_redirected_to post175_path(assigns(:post175))
  end

  test "should show post175" do
    get :show, :id => @post175.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post175.to_param
    assert_response :success
  end

  test "should update post175" do
    put :update, :id => @post175.to_param, :post175 => @post175.attributes
    assert_redirected_to post175_path(assigns(:post175))
  end

  test "should destroy post175" do
    assert_difference('Post175.count', -1) do
      delete :destroy, :id => @post175.to_param
    end

    assert_redirected_to post175s_path
  end
end
