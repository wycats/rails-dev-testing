require 'test_helper'

class Post395sControllerTest < ActionController::TestCase
  setup do
    @post395 = post395s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post395s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post395" do
    assert_difference('Post395.count') do
      post :create, :post395 => @post395.attributes
    end

    assert_redirected_to post395_path(assigns(:post395))
  end

  test "should show post395" do
    get :show, :id => @post395.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post395.to_param
    assert_response :success
  end

  test "should update post395" do
    put :update, :id => @post395.to_param, :post395 => @post395.attributes
    assert_redirected_to post395_path(assigns(:post395))
  end

  test "should destroy post395" do
    assert_difference('Post395.count', -1) do
      delete :destroy, :id => @post395.to_param
    end

    assert_redirected_to post395s_path
  end
end
