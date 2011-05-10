require 'test_helper'

class ImportParticipantsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:import_participants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create import_participant" do
    assert_difference('ImportParticipant.count') do
      post :create, :import_participant => { }
    end

    assert_redirected_to import_participant_path(assigns(:import_participant))
  end

  test "should show import_participant" do
    get :show, :id => import_participants(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => import_participants(:one).to_param
    assert_response :success
  end

  test "should update import_participant" do
    put :update, :id => import_participants(:one).to_param, :import_participant => { }
    assert_redirected_to import_participant_path(assigns(:import_participant))
  end

  test "should destroy import_participant" do
    assert_difference('ImportParticipant.count', -1) do
      delete :destroy, :id => import_participants(:one).to_param
    end

    assert_redirected_to import_participants_path
  end
end
