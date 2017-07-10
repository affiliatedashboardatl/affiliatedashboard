require 'test_helper'

class CjControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cj_show_url
    assert_response :success
  end

end
