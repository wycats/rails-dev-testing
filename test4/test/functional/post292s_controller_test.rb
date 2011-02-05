require 'test_helper'

class Post292sControllerTest < ActionController::TestCase
  setup do
    @post292 = post292s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post292s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post292" do
    assert_difference('Post292.count') do
      post :create, :post292 => @post292.attributes
    end

    assert_redirected_to post292_path(assigns(:post292))
  end

  test "should show post292" do
    get :show, :id => @post292.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post292.to_param
    assert_response :success
  end

  test "should update post292" do
    put :update, :id => @post292.to_param, :post292 => @post292.attributes
    assert_redirected_to post292_path(assigns(:post292))
  end

  test "should destroy post292" do
    assert_difference('Post292.count', -1) do
      delete :destroy, :id => @post292.to_param
    end

    assert_redirected_to post292s_path
  end
end
