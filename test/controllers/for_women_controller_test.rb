require 'test_helper'

class ForWomenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @for_woman = for_women(:one)
  end

  test "should get index" do
    get for_women_url
    assert_response :success
  end

  test "should get new" do
    get new_for_woman_url
    assert_response :success
  end

  test "should create for_woman" do
    assert_difference('ForWoman.count') do
      post for_women_url, params: { for_woman: { description: @for_woman.description, name: @for_woman.name } }
    end

    assert_redirected_to for_woman_url(ForWoman.last)
  end

  test "should show for_woman" do
    get for_woman_url(@for_woman)
    assert_response :success
  end

  test "should get edit" do
    get edit_for_woman_url(@for_woman)
    assert_response :success
  end

  test "should update for_woman" do
    patch for_woman_url(@for_woman), params: { for_woman: { description: @for_woman.description, name: @for_woman.name } }
    assert_redirected_to for_woman_url(@for_woman)
  end

  test "should destroy for_woman" do
    assert_difference('ForWoman.count', -1) do
      delete for_woman_url(@for_woman)
    end

    assert_redirected_to for_women_url
  end
end
