require 'test_helper'

class UploaderControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get form" do
    get :form
    assert_response :success
  end

  test "should get upload" do
    get :upload
    assert_response :success
  end

  test "should get download" do
    get :download
    assert_response :success
  end

end
