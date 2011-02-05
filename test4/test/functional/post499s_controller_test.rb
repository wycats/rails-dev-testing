require 'test_helper'

class Post499sControllerTest < ActionController::TestCase
  setup do
    @post499 = post499s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post499s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post499" do
    assert_difference('Post499.count') do
      post :create, :post499 => @post499.attributes
    end

    assert_redirected_to post499_path(assigns(:post499))
  end

  test "should show post499" do
    get :show, :id => @post499.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post499.to_param
    assert_response :success
  end

  test "should update post499" do
    put :update, :id => @post499.to_param, :post499 => @post499.attributes
    assert_redirected_to post499_path(assigns(:post499))
  end

  test "should destroy post499" do
    assert_difference('Post499.count', -1) do
      delete :destroy, :id => @post499.to_param
    end

    assert_redirected_to post499s_path
  end
end
