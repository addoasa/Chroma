require 'test_helper'

class QuestionfiveControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get questionfive_index_url
    assert_response :success
  end

end
