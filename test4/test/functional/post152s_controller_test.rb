require 'test_helper'

class Post152sControllerTest < ActionController::TestCase
  setup do
    @post152 = post152s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post152s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post152" do
    assert_difference('Post152.count') do
      post :create, :post152 => @post152.attributes
    end

    assert_redirected_to post152_path(assigns(:post152))
  end

  test "should show post152" do
    get :show, :id => @post152.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post152.to_param
    assert_response :success
  end

  test "should update post152" do
    put :update, :id => @post152.to_param, :post152 => @post152.attributes
    assert_redirected_to post152_path(assigns(:post152))
  end

  test "should destroy post152" do
    assert_difference('Post152.count', -1) do
      delete :destroy, :id => @post152.to_param
    end

    assert_redirected_to post152s_path
  end
end
