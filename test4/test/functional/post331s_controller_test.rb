require 'test_helper'

class Post331sControllerTest < ActionController::TestCase
  setup do
    @post331 = post331s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post331s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post331" do
    assert_difference('Post331.count') do
      post :create, :post331 => @post331.attributes
    end

    assert_redirected_to post331_path(assigns(:post331))
  end

  test "should show post331" do
    get :show, :id => @post331.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post331.to_param
    assert_response :success
  end

  test "should update post331" do
    put :update, :id => @post331.to_param, :post331 => @post331.attributes
    assert_redirected_to post331_path(assigns(:post331))
  end

  test "should destroy post331" do
    assert_difference('Post331.count', -1) do
      delete :destroy, :id => @post331.to_param
    end

    assert_redirected_to post331s_path
  end
end
