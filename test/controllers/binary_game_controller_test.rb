require 'test_helper'

class BinaryGameControllerTest < ActionDispatch::IntegrationTest
  test "should get welcome" do
    get binary_game_welcome_url
    assert_response :success
  end

end
