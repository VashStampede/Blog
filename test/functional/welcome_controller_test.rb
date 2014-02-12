require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get allposts" do
    get :allposts
    assert_response :success
  end

end
