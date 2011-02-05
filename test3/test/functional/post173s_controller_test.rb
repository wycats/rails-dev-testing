require 'test_helper'

class Post173sControllerTest < ActionController::TestCase
  setup do
    @post173 = post173s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post173s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post173" do
    assert_difference('Post173.count') do
      post :create, :post173 => @post173.attributes
    end

    assert_redirected_to post173_path(assigns(:post173))
  end

  test "should show post173" do
    get :show, :id => @post173.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post173.to_param
    assert_response :success
  end

  test "should update post173" do
    put :update, :id => @post173.to_param, :post173 => @post173.attributes
    assert_redirected_to post173_path(assigns(:post173))
  end

  test "should destroy post173" do
    assert_difference('Post173.count', -1) do
      delete :destroy, :id => @post173.to_param
    end

    assert_redirected_to post173s_path
  end
end
