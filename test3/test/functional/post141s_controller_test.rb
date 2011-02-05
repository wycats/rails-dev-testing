require 'test_helper'

class Post141sControllerTest < ActionController::TestCase
  setup do
    @post141 = post141s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post141s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post141" do
    assert_difference('Post141.count') do
      post :create, :post141 => @post141.attributes
    end

    assert_redirected_to post141_path(assigns(:post141))
  end

  test "should show post141" do
    get :show, :id => @post141.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post141.to_param
    assert_response :success
  end

  test "should update post141" do
    put :update, :id => @post141.to_param, :post141 => @post141.attributes
    assert_redirected_to post141_path(assigns(:post141))
  end

  test "should destroy post141" do
    assert_difference('Post141.count', -1) do
      delete :destroy, :id => @post141.to_param
    end

    assert_redirected_to post141s_path
  end
end
