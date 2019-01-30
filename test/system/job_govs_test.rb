require "application_system_test_case"

class JobGovsTest < ApplicationSystemTestCase
  setup do
    @job_gov = job_govs(:one)
  end

  test "visiting the index" do
    visit job_govs_url
    assert_selector "h1", text: "Job Govs"
  end

  test "creating a Job gov" do
    visit job_govs_url
    click_on "New Job Gov"

    fill_in "Age", with: @job_gov.age
    fill_in "Date", with: @job_gov.date
    fill_in "Fee", with: @job_gov.fee
    fill_in "Fitness", with: @job_gov.fitness
    fill_in "Link", with: @job_gov.link
    fill_in "Place", with: @job_gov.place
    fill_in "Post", with: @job_gov.post
    fill_in "Qualification", with: @job_gov.qualification
    fill_in "Vacancy", with: @job_gov.vacancy
    click_on "Create Job gov"

    assert_text "Job gov was successfully created"
    click_on "Back"
  end

  test "updating a Job gov" do
    visit job_govs_url
    click_on "Edit", match: :first

    fill_in "Age", with: @job_gov.age
    fill_in "Date", with: @job_gov.date
    fill_in "Fee", with: @job_gov.fee
    fill_in "Fitness", with: @job_gov.fitness
    fill_in "Link", with: @job_gov.link
    fill_in "Place", with: @job_gov.place
    fill_in "Post", with: @job_gov.post
    fill_in "Qualification", with: @job_gov.qualification
    fill_in "Vacancy", with: @job_gov.vacancy
    click_on "Update Job gov"

    assert_text "Job gov was successfully updated"
    click_on "Back"
  end

  test "destroying a Job gov" do
    visit job_govs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Job gov was successfully destroyed"
  end
end
