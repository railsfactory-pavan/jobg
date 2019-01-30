require 'test_helper'

class JobGovsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_gov = job_govs(:one)
  end

  test "should get index" do
    get job_govs_url
    assert_response :success
  end

  test "should get new" do
    get new_job_gov_url
    assert_response :success
  end

  test "should create job_gov" do
    assert_difference('JobGov.count') do
      post job_govs_url, params: { job_gov: { age: @job_gov.age, date: @job_gov.date, fee: @job_gov.fee, fitness: @job_gov.fitness, link: @job_gov.link, place: @job_gov.place, post: @job_gov.post, qualification: @job_gov.qualification, vacancy: @job_gov.vacancy } }
    end

    assert_redirected_to job_gov_url(JobGov.last)
  end

  test "should show job_gov" do
    get job_gov_url(@job_gov)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_gov_url(@job_gov)
    assert_response :success
  end

  test "should update job_gov" do
    patch job_gov_url(@job_gov), params: { job_gov: { age: @job_gov.age, date: @job_gov.date, fee: @job_gov.fee, fitness: @job_gov.fitness, link: @job_gov.link, place: @job_gov.place, post: @job_gov.post, qualification: @job_gov.qualification, vacancy: @job_gov.vacancy } }
    assert_redirected_to job_gov_url(@job_gov)
  end

  test "should destroy job_gov" do
    assert_difference('JobGov.count', -1) do
      delete job_gov_url(@job_gov)
    end

    assert_redirected_to job_govs_url
  end
end
