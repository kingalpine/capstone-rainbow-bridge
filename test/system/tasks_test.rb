require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "creating a Task" do
    visit tasks_url
    click_on "New Task"

    fill_in "Order line", with: @task.Order_Line_id
    fill_in "Task description", with: @task.Task_Description
    fill_in "Task due date", with: @task.Task_Due_Date
    fill_in "Task finish date", with: @task.Task_Finish_Date
    fill_in "Task name", with: @task.Task_Name
    fill_in "Task start date", with: @task.Task_Start_Date
    fill_in "Task status", with: @task.Task_Status_id
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "updating a Task" do
    visit tasks_url
    click_on "Edit", match: :first

    fill_in "Order line", with: @task.Order_Line_id
    fill_in "Task description", with: @task.Task_Description
    fill_in "Task due date", with: @task.Task_Due_Date
    fill_in "Task finish date", with: @task.Task_Finish_Date
    fill_in "Task name", with: @task.Task_Name
    fill_in "Task start date", with: @task.Task_Start_Date
    fill_in "Task status", with: @task.Task_Status_id
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "Back"
  end

  test "destroying a Task" do
    visit tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task was successfully destroyed"
  end
end
