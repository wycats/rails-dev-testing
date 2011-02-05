require 'test_helper'

class Post99sControllerTest < ActionController::TestCase
  setup do
    @post99 = post99s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post99s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post99" do
    assert_difference('Post99.count') do
      post :create, :post99 => @post99.attributes
    end

    assert_redirected_to post99_path(assigns(:post99))
  end

  test "should show post99" do
    get :show, :id => @post99.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post99.to_param
    assert_response :success
  end

  test "should update post99" do
    put :update, :id => @post99.to_param, :post99 => @post99.attributes
    assert_redirected_to post99_path(assigns(:post99))
  end

  test "should destroy post99" do
    assert_difference('Post99.count', -1) do
      delete :destroy, :id => @post99.to_param
    end

    assert_redirected_to post99s_path
  end
end
