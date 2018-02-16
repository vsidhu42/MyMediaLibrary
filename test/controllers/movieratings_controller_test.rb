require 'test_helper'

class MovieratingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movierating = movieratings(:one)
  end

  test "should get index" do
    get movieratings_url
    assert_response :success
  end

  test "should get new" do
    get new_movierating_url
    assert_response :success
  end

  test "should create movierating" do
    assert_difference('Movierating.count') do
      post movieratings_url, params: { movierating: { movieratingid: @movierating.movieratingid, name: @movierating.name, rating: @movierating.rating, themovieid: @movierating.themovieid } }
    end

    assert_redirected_to movierating_url(Movierating.last)
  end

  test "should show movierating" do
    get movierating_url(@movierating)
    assert_response :success
  end

  test "should get edit" do
    get edit_movierating_url(@movierating)
    assert_response :success
  end

  test "should update movierating" do
    patch movierating_url(@movierating), params: { movierating: { movieratingid: @movierating.movieratingid, name: @movierating.name, rating: @movierating.rating, themovieid: @movierating.themovieid } }
    assert_redirected_to movierating_url(@movierating)
  end

  test "should destroy movierating" do
    assert_difference('Movierating.count', -1) do
      delete movierating_url(@movierating)
    end

    assert_redirected_to movieratings_url
  end
end
