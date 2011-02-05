require 'test_helper'

class Post32sControllerTest < ActionController::TestCase
  setup do
    @post32 = post32s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post32s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post32" do
    assert_difference('Post32.count') do
      post :create, :post32 => @post32.attributes
    end

    assert_redirected_to post32_path(assigns(:post32))
  end

  test "should show post32" do
    get :show, :id => @post32.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post32.to_param
    assert_response :success
  end

  test "should update post32" do
    put :update, :id => @post32.to_param, :post32 => @post32.attributes
    assert_redirected_to post32_path(assigns(:post32))
  end

  test "should destroy post32" do
    assert_difference('Post32.count', -1) do
      delete :destroy, :id => @post32.to_param
    end

    assert_redirected_to post32s_path
  end
end
