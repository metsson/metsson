require 'test_helper'

class Manager::ProjectsControllerTest < ActionController::TestCase
  setup do
    @manager_project = manager_projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manager_projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manager_project" do
    assert_difference('Manager::Project.count') do
      post :create, manager_project: {  }
    end

    assert_redirected_to manager_project_path(assigns(:manager_project))
  end

  test "should show manager_project" do
    get :show, id: @manager_project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manager_project
    assert_response :success
  end

  test "should update manager_project" do
    patch :update, id: @manager_project, manager_project: {  }
    assert_redirected_to manager_project_path(assigns(:manager_project))
  end

  test "should destroy manager_project" do
    assert_difference('Manager::Project.count', -1) do
      delete :destroy, id: @manager_project
    end

    assert_redirected_to manager_projects_path
  end
end
