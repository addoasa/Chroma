require 'test_helper'

class RedsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @red = reds(:one)
  end

  test "should get index" do
    get reds_url
    assert_response :success
  end

  test "should get new" do
    get new_red_url
    assert_response :success
  end

  test "should create red" do
    assert_difference('Red.count') do
      post reds_url, params: { red: { danceability: @red.danceability, energy: @red.energy, loudness: @red.loudness, mode: @red.mode, tempo: @red.tempo, valence: @red.valence } }
    end

    assert_redirected_to red_url(Red.last)
  end

  test "should show red" do
    get red_url(@red)
    assert_response :success
  end

  test "should get edit" do
    get edit_red_url(@red)
    assert_response :success
  end

  test "should update red" do
    patch red_url(@red), params: { red: { danceability: @red.danceability, energy: @red.energy, loudness: @red.loudness, mode: @red.mode, tempo: @red.tempo, valence: @red.valence } }
    assert_redirected_to red_url(@red)
  end

  test "should destroy red" do
    assert_difference('Red.count', -1) do
      delete red_url(@red)
    end

    assert_redirected_to reds_url
  end
end
