require 'test_helper'

class YellowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yellow = yellows(:one)
  end

  test "should get index" do
    get yellows_url
    assert_response :success
  end

  test "should get new" do
    get new_yellow_url
    assert_response :success
  end

  test "should create yellow" do
    assert_difference('Yellow.count') do
      post yellows_url, params: { yellow: { danceability: @yellow.danceability, energy: @yellow.energy, loudness: @yellow.loudness, mode: @yellow.mode, tempo: @yellow.tempo, valence: @yellow.valence } }
    end

    assert_redirected_to yellow_url(Yellow.last)
  end

  test "should show yellow" do
    get yellow_url(@yellow)
    assert_response :success
  end

  test "should get edit" do
    get edit_yellow_url(@yellow)
    assert_response :success
  end

  test "should update yellow" do
    patch yellow_url(@yellow), params: { yellow: { danceability: @yellow.danceability, energy: @yellow.energy, loudness: @yellow.loudness, mode: @yellow.mode, tempo: @yellow.tempo, valence: @yellow.valence } }
    assert_redirected_to yellow_url(@yellow)
  end

  test "should destroy yellow" do
    assert_difference('Yellow.count', -1) do
      delete yellow_url(@yellow)
    end

    assert_redirected_to yellows_url
  end
end
