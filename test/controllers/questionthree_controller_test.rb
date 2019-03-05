require 'test_helper'

class QuestionthreeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get questionthree_index_url
    assert_response :success
  end

end
