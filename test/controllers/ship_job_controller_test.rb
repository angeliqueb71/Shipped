require 'test_helper'

class ShipJobControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ship_job_index_url
    assert_response :success
  end

end
