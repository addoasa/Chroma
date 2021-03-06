require 'test_helper'

class GreensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @green = greens(:one)
  end

  test "should get index" do
    get greens_url
    assert_response :success
  end

  test "should get new" do
    get new_green_url
    assert_response :success
  end

  test "should create green" do
    assert_difference('Green.count') do
      post greens_url, params: { green: { danceability: @green.danceability, energy: @green.energy, loudness: @green.loudness, mode: @green.mode, tempo: @green.tempo, valence: @green.valence } }
    end

    assert_redirected_to green_url(Green.last)
  end

  test "should show green" do
    get green_url(@green)
    assert_response :success
  end

  test "should get edit" do
    get edit_green_url(@green)
    assert_response :success
  end

  test "should update green" do
    patch green_url(@green), params: { green: { danceability: @green.danceability, energy: @green.energy, loudness: @green.loudness, mode: @green.mode, tempo: @green.tempo, valence: @green.valence } }
    assert_redirected_to green_url(@green)
  end

  test "should destroy green" do
    assert_difference('Green.count', -1) do
      delete green_url(@green)
    end

    assert_redirected_to greens_url
  end
end
