require 'test_helper'

class CrushesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crush = crushes(:one)
  end

  test "should get index" do
    get crushes_url
    assert_response :success
  end

  test "should get new" do
    get new_crush_url
    assert_response :success
  end

  test "should create crush" do
    assert_difference('Crush.count') do
      post crushes_url, params: { crush: { crush_number: @crush.crush_number, message_for_them: @crush.message_for_them, things_you_should_change: @crush.things_you_should_change, why_you_like_them: @crush.why_you_like_them } }
    end

    assert_redirected_to crush_url(Crush.last)
  end

  test "should show crush" do
    get crush_url(@crush)
    assert_response :success
  end

  test "should get edit" do
    get edit_crush_url(@crush)
    assert_response :success
  end

  test "should update crush" do
    patch crush_url(@crush), params: { crush: { crush_number: @crush.crush_number, message_for_them: @crush.message_for_them, things_you_should_change: @crush.things_you_should_change, why_you_like_them: @crush.why_you_like_them } }
    assert_redirected_to crush_url(@crush)
  end

  test "should destroy crush" do
    assert_difference('Crush.count', -1) do
      delete crush_url(@crush)
    end

    assert_redirected_to crushes_url
  end
end
