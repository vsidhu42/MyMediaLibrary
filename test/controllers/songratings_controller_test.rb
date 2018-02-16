require 'test_helper'

class SongratingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @songrating = songratings(:one)
  end

  test "should get index" do
    get songratings_url
    assert_response :success
  end

  test "should get new" do
    get new_songrating_url
    assert_response :success
  end

  test "should create songrating" do
    assert_difference('Songrating.count') do
      post songratings_url, params: { songrating: { name: @songrating.name, rating: @songrating.rating, songratingid: @songrating.songratingid, thesongid: @songrating.thesongid } }
    end

    assert_redirected_to songrating_url(Songrating.last)
  end

  test "should show songrating" do
    get songrating_url(@songrating)
    assert_response :success
  end

  test "should get edit" do
    get edit_songrating_url(@songrating)
    assert_response :success
  end

  test "should update songrating" do
    patch songrating_url(@songrating), params: { songrating: { name: @songrating.name, rating: @songrating.rating, songratingid: @songrating.songratingid, thesongid: @songrating.thesongid } }
    assert_redirected_to songrating_url(@songrating)
  end

  test "should destroy songrating" do
    assert_difference('Songrating.count', -1) do
      delete songrating_url(@songrating)
    end

    assert_redirected_to songratings_url
  end
end
