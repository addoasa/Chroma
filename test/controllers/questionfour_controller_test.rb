require 'test_helper'

class QuestionfourControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get questionfour_index_url
    assert_response :success
  end

end
