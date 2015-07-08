require 'test_helper'

class SessionControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get close" do
    get :close
    assert_response :success
  end

end
