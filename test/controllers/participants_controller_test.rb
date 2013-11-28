require 'test_helper'

class ParticipantsControllerTest < ActionController::TestCase
  setup do
    @participant = participants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:participants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create participant" do
    assert_difference('Participant.count') do
      post :create, participant: { birthday: @participant.birthday, dateQualification: @participant.dateQualification, firstname: @participant.firstname, name: @participant.name, noDossard: @participant.noDossard, no_license: @participant.no_license, phone: @participant.phone, sexe: @participant.sexe, type: @participant.type }
    end

    assert_redirected_to participant_path(assigns(:participant))
  end

  test "should show participant" do
    get :show, id: @participant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @participant
    assert_response :success
  end

  test "should update participant" do
    patch :update, id: @participant, participant: { birthday: @participant.birthday, dateQualification: @participant.dateQualification, firstname: @participant.firstname, name: @participant.name, noDossard: @participant.noDossard, no_license: @participant.no_license, phone: @participant.phone, sexe: @participant.sexe, type: @participant.type }
    assert_redirected_to participant_path(assigns(:participant))
  end

  test "should destroy participant" do
    assert_difference('Participant.count', -1) do
      delete :destroy, id: @participant
    end

    assert_redirected_to participants_path
  end
end
