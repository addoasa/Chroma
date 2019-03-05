require 'test_helper'

class QuestionsixControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get questionsix_index_url
    assert_response :success
  end

end
