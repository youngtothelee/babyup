require 'test_helper'

class ModelControllerTest < ActionController::TestCase
  test "should get parentsinfo" do
    get :parentsinfo
    assert_response :success
  end

end
