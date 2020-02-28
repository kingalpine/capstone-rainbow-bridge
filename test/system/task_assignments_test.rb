require "application_system_test_case"

class TaskAssignmentsTest < ApplicationSystemTestCase
  setup do
    @task_assignment = task_assignments(:one)
  end

  test "visiting the index" do
    visit task_assignments_url
    assert_selector "h1", text: "Task Assignments"
  end

  test "creating a Task assignment" do
    visit task_assignments_url
    click_on "New Task Assignment"

    fill_in "Employee", with: @task_assignment.Employee_id
    fill_in "Task", with: @task_assignment.Task_id
    click_on "Create Task assignment"

    assert_text "Task assignment was successfully created"
    click_on "Back"
  end

  test "updating a Task assignment" do
    visit task_assignments_url
    click_on "Edit", match: :first

    fill_in "Employee", with: @task_assignment.Employee_id
    fill_in "Task", with: @task_assignment.Task_id
    click_on "Update Task assignment"

    assert_text "Task assignment was successfully updated"
    click_on "Back"
  end

  test "destroying a Task assignment" do
    visit task_assignments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task assignment was successfully destroyed"
  end
end
