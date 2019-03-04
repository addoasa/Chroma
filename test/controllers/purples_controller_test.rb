require 'test_helper'

class PurplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purple = purples(:one)
  end

  test "should get index" do
    get purples_url
    assert_response :success
  end

  test "should get new" do
    get new_purple_url
    assert_response :success
  end

  test "should create purple" do
    assert_difference('Purple.count') do
      post purples_url, params: { purple: { danceability: @purple.danceability, energy: @purple.energy, loudness: @purple.loudness, mode: @purple.mode, tempo: @purple.tempo, valence: @purple.valence } }
    end

    assert_redirected_to purple_url(Purple.last)
  end

  test "should show purple" do
    get purple_url(@purple)
    assert_response :success
  end

  test "should get edit" do
    get edit_purple_url(@purple)
    assert_response :success
  end

  test "should update purple" do
    patch purple_url(@purple), params: { purple: { danceability: @purple.danceability, energy: @purple.energy, loudness: @purple.loudness, mode: @purple.mode, tempo: @purple.tempo, valence: @purple.valence } }
    assert_redirected_to purple_url(@purple)
  end

  test "should destroy purple" do
    assert_difference('Purple.count', -1) do
      delete purple_url(@purple)
    end

    assert_redirected_to purples_url
  end
end
