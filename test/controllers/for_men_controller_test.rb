require 'test_helper'

class ForMenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @for_man = for_men(:one)
  end

  test "should get index" do
    get for_men_url
    assert_response :success
  end

  test "should get new" do
    get new_for_man_url
    assert_response :success
  end

  test "should create for_man" do
    assert_difference('ForMan.count') do
      post for_men_url, params: { for_man: { description: @for_man.description, name: @for_man.name } }
    end

    assert_redirected_to for_man_url(ForMan.last)
  end

  test "should show for_man" do
    get for_man_url(@for_man)
    assert_response :success
  end

  test "should get edit" do
    get edit_for_man_url(@for_man)
    assert_response :success
  end

  test "should update for_man" do
    patch for_man_url(@for_man), params: { for_man: { description: @for_man.description, name: @for_man.name } }
    assert_redirected_to for_man_url(@for_man)
  end

  test "should destroy for_man" do
    assert_difference('ForMan.count', -1) do
      delete for_man_url(@for_man)
    end

    assert_redirected_to for_men_url
  end
end
