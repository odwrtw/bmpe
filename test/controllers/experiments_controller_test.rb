require 'test_helper'

class ExperimentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @experiment = experiments(:one)
  end

  test "should get index" do
    get experiments_url
    assert_response :success
  end

  test "should get new" do
    get new_experiment_url
    assert_response :success
  end

  test "should create experiment" do
    assert_difference('Experiment.count') do
      post experiments_url, params: { experiment: { description: @experiment.description, name: @experiment.name } }
    end

    assert_redirected_to experiment_url(Experiment.last)
  end

  test "should show experiment" do
    get experiment_url(@experiment)
    assert_response :success
  end

  test "should get edit" do
    get edit_experiment_url(@experiment)
    assert_response :success
  end

  test "should update experiment" do
    patch experiment_url(@experiment), params: { experiment: { description: @experiment.description, name: @experiment.name } }
    assert_redirected_to experiment_url(@experiment)
  end

  test "should destroy experiment" do
    assert_difference('Experiment.count', -1) do
      delete experiment_url(@experiment)
    end

    assert_redirected_to experiments_url
  end
end
