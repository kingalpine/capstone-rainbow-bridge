require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { Order_Line_id: @task.Order_Line_id, Task_Description: @task.Task_Description, Task_Due_Date: @task.Task_Due_Date, Task_Finish_Date: @task.Task_Finish_Date, Task_Name: @task.Task_Name, Task_Start_Date: @task.Task_Start_Date, Task_Status_id: @task.Task_Status_id } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { Order_Line_id: @task.Order_Line_id, Task_Description: @task.Task_Description, Task_Due_Date: @task.Task_Due_Date, Task_Finish_Date: @task.Task_Finish_Date, Task_Name: @task.Task_Name, Task_Start_Date: @task.Task_Start_Date, Task_Status_id: @task.Task_Status_id } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end
