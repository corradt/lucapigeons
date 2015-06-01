require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about_me" do
    get :about_me
    assert_response :success
  end

  test "should get contact_me" do
    get :contact_me
    assert_response :success
  end

end
