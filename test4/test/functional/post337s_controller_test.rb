require 'test_helper'

class Post337sControllerTest < ActionController::TestCase
  setup do
    @post337 = post337s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post337s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post337" do
    assert_difference('Post337.count') do
      post :create, :post337 => @post337.attributes
    end

    assert_redirected_to post337_path(assigns(:post337))
  end

  test "should show post337" do
    get :show, :id => @post337.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post337.to_param
    assert_response :success
  end

  test "should update post337" do
    put :update, :id => @post337.to_param, :post337 => @post337.attributes
    assert_redirected_to post337_path(assigns(:post337))
  end

  test "should destroy post337" do
    assert_difference('Post337.count', -1) do
      delete :destroy, :id => @post337.to_param
    end

    assert_redirected_to post337s_path
  end
end
