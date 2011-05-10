require 'test_helper'

class ImportCandidatesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:import_candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create import_candidate" do
    assert_difference('ImportCandidate.count') do
      post :create, :import_candidate => { }
    end

    assert_redirected_to import_candidate_path(assigns(:import_candidate))
  end

  test "should show import_candidate" do
    get :show, :id => import_candidates(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => import_candidates(:one).to_param
    assert_response :success
  end

  test "should update import_candidate" do
    put :update, :id => import_candidates(:one).to_param, :import_candidate => { }
    assert_redirected_to import_candidate_path(assigns(:import_candidate))
  end

  test "should destroy import_candidate" do
    assert_difference('ImportCandidate.count', -1) do
      delete :destroy, :id => import_candidates(:one).to_param
    end

    assert_redirected_to import_candidates_path
  end
end
