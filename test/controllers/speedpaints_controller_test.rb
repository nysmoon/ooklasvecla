require 'test_helper'

class SpeedpaintsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @speedpaint = speedpaints(:one)
  end

  test "should get index" do
    get speedpaints_url
    assert_response :success
  end

  test "should get new" do
    get new_speedpaint_url
    assert_response :success
  end

  test "should create speedpaint" do
    assert_difference('Speedpaint.count') do
      post speedpaints_url, params: { speedpaint: { creation_date: @speedpaint.creation_date, description: @speedpaint.description, image_url: @speedpaint.image_url, name: @speedpaint.name, video_url: @speedpaint.video_url } }
    end

    assert_redirected_to speedpaint_url(Speedpaint.last)
  end

  test "should show speedpaint" do
    get speedpaint_url(@speedpaint)
    assert_response :success
  end

  test "should get edit" do
    get edit_speedpaint_url(@speedpaint)
    assert_response :success
  end

  test "should update speedpaint" do
    patch speedpaint_url(@speedpaint), params: { speedpaint: { creation_date: @speedpaint.creation_date, description: @speedpaint.description, image_url: @speedpaint.image_url, name: @speedpaint.name, video_url: @speedpaint.video_url } }
    assert_redirected_to speedpaint_url(@speedpaint)
  end

  test "should destroy speedpaint" do
    assert_difference('Speedpaint.count', -1) do
      delete speedpaint_url(@speedpaint)
    end

    assert_redirected_to speedpaints_url
  end
end
