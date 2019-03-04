require 'test_helper'

class QuestiononeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get questionone_index_url
    assert_response :success
  end

end
