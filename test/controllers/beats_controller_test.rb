require "test_helper"

class BeatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beat = beats(:one)
  end

  test "should get index" do
    get beats_url, as: :json
    assert_response :success
  end

  test "should create beat" do
    assert_difference('Beat.count') do
      post beats_url, params: { beat: { artist: @beat.artist, media: @beat.media, producer: @beat.producer, song: @beat.song } }, as: :json
    end

    assert_response 201
  end

  test "should show beat" do
    get beat_url(@beat), as: :json
    assert_response :success
  end

  test "should update beat" do
    patch beat_url(@beat), params: { beat: { artist: @beat.artist, media: @beat.media, producer: @beat.producer, song: @beat.song } }, as: :json
    assert_response 200
  end

  test "should destroy beat" do
    assert_difference('Beat.count', -1) do
      delete beat_url(@beat), as: :json
    end

    assert_response 204
  end
end
