require 'test_helper'

class Post326sControllerTest < ActionController::TestCase
  setup do
    @post326 = post326s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post326s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post326" do
    assert_difference('Post326.count') do
      post :create, :post326 => @post326.attributes
    end

    assert_redirected_to post326_path(assigns(:post326))
  end

  test "should show post326" do
    get :show, :id => @post326.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post326.to_param
    assert_response :success
  end

  test "should update post326" do
    put :update, :id => @post326.to_param, :post326 => @post326.attributes
    assert_redirected_to post326_path(assigns(:post326))
  end

  test "should destroy post326" do
    assert_difference('Post326.count', -1) do
      delete :destroy, :id => @post326.to_param
    end

    assert_redirected_to post326s_path
  end
end
