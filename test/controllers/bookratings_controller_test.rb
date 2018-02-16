require 'test_helper'

class BookratingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookrating = bookratings(:one)
  end

  test "should get index" do
    get bookratings_url
    assert_response :success
  end

  test "should get new" do
    get new_bookrating_url
    assert_response :success
  end

  test "should create bookrating" do
    assert_difference('Bookrating.count') do
      post bookratings_url, params: { bookrating: { bookratingid: @bookrating.bookratingid, name: @bookrating.name, rating: @bookrating.rating, thebookid: @bookrating.thebookid } }
    end

    assert_redirected_to bookrating_url(Bookrating.last)
  end

  test "should show bookrating" do
    get bookrating_url(@bookrating)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookrating_url(@bookrating)
    assert_response :success
  end

  test "should update bookrating" do
    patch bookrating_url(@bookrating), params: { bookrating: { bookratingid: @bookrating.bookratingid, name: @bookrating.name, rating: @bookrating.rating, thebookid: @bookrating.thebookid } }
    assert_redirected_to bookrating_url(@bookrating)
  end

  test "should destroy bookrating" do
    assert_difference('Bookrating.count', -1) do
      delete bookrating_url(@bookrating)
    end

    assert_redirected_to bookratings_url
  end
end
