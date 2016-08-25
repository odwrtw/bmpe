require 'test_helper'

class CamerasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camera = cameras(:one)
  end

  test "should get index" do
    get cameras_url
    assert_response :success
  end

  test "should get new" do
    get new_camera_url
    assert_response :success
  end

  test "should create camera" do
    assert_difference('Camera.count') do
      post cameras_url, params: { camera: { experiments_id: @camera.experiments_id, number: @camera.number } }
    end

    assert_redirected_to camera_url(Camera.last)
  end

  test "should show camera" do
    get camera_url(@camera)
    assert_response :success
  end

  test "should get edit" do
    get edit_camera_url(@camera)
    assert_response :success
  end

  test "should update camera" do
    patch camera_url(@camera), params: { camera: { experiments_id: @camera.experiments_id, number: @camera.number } }
    assert_redirected_to camera_url(@camera)
  end

  test "should destroy camera" do
    assert_difference('Camera.count', -1) do
      delete camera_url(@camera)
    end

    assert_redirected_to cameras_url
  end
end
