require 'test_helper'

class CrimepointsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crimepoints_index_url
    assert_response :success
  end

  test "should get show" do
    get crimepoints_show_url
    assert_response :success
  end

end
