require 'test_helper'

class Post372sControllerTest < ActionController::TestCase
  setup do
    @post372 = post372s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post372s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post372" do
    assert_difference('Post372.count') do
      post :create, :post372 => @post372.attributes
    end

    assert_redirected_to post372_path(assigns(:post372))
  end

  test "should show post372" do
    get :show, :id => @post372.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post372.to_param
    assert_response :success
  end

  test "should update post372" do
    put :update, :id => @post372.to_param, :post372 => @post372.attributes
    assert_redirected_to post372_path(assigns(:post372))
  end

  test "should destroy post372" do
    assert_difference('Post372.count', -1) do
      delete :destroy, :id => @post372.to_param
    end

    assert_redirected_to post372s_path
  end
end
