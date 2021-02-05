require 'test_helper'

class AcceptancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get acceptances_index_url
    assert_response :success
  end

  test "should get new" do
    get acceptances_new_url
    assert_response :success
  end

end
