require 'test_helper'

class QuestiontwoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get questiontwo_index_url
    assert_response :success
  end

end
