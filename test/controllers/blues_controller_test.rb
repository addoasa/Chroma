require 'test_helper'

class BluesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blue = blues(:one)
  end

  test "should get index" do
    get blues_url
    assert_response :success
  end

  test "should get new" do
    get new_blue_url
    assert_response :success
  end

  test "should create blue" do
    assert_difference('Blue.count') do
      post blues_url, params: { blue: { danceability: @blue.danceability, energy: @blue.energy, loudness: @blue.loudness, mode: @blue.mode, tempo: @blue.tempo, valence: @blue.valence } }
    end

    assert_redirected_to blue_url(Blue.last)
  end

  test "should show blue" do
    get blue_url(@blue)
    assert_response :success
  end

  test "should get edit" do
    get edit_blue_url(@blue)
    assert_response :success
  end

  test "should update blue" do
    patch blue_url(@blue), params: { blue: { danceability: @blue.danceability, energy: @blue.energy, loudness: @blue.loudness, mode: @blue.mode, tempo: @blue.tempo, valence: @blue.valence } }
    assert_redirected_to blue_url(@blue)
  end

  test "should destroy blue" do
    assert_difference('Blue.count', -1) do
      delete blue_url(@blue)
    end

    assert_redirected_to blues_url
  end
end
