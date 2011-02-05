require 'test_helper'

class Post231sControllerTest < ActionController::TestCase
  setup do
    @post231 = post231s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post231s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post231" do
    assert_difference('Post231.count') do
      post :create, :post231 => @post231.attributes
    end

    assert_redirected_to post231_path(assigns(:post231))
  end

  test "should show post231" do
    get :show, :id => @post231.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post231.to_param
    assert_response :success
  end

  test "should update post231" do
    put :update, :id => @post231.to_param, :post231 => @post231.attributes
    assert_redirected_to post231_path(assigns(:post231))
  end

  test "should destroy post231" do
    assert_difference('Post231.count', -1) do
      delete :destroy, :id => @post231.to_param
    end

    assert_redirected_to post231s_path
  end
end
