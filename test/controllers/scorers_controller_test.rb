require 'test_helper'

class ScorersControllerTest < ActionController::TestCase
  setup do
    @scorer = scorers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scorers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scorer" do
    assert_difference('Scorer.count') do
      post :create, scorer: { client_rating: @scorer.client_rating, coworker_rating: @scorer.coworker_rating, delay_percentage: @scorer.delay_percentage, employee_id: @scorer.employee_id, employee_name: @scorer.employee_name, mgr_rating: @scorer.mgr_rating, rank: @scorer.rank, score: @scorer.score }
    end

    assert_redirected_to scorer_path(assigns(:scorer))
  end

  test "should show scorer" do
    get :show, id: @scorer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scorer
    assert_response :success
  end

  test "should update scorer" do
    patch :update, id: @scorer, scorer: { client_rating: @scorer.client_rating, coworker_rating: @scorer.coworker_rating, delay_percentage: @scorer.delay_percentage, employee_id: @scorer.employee_id, employee_name: @scorer.employee_name, mgr_rating: @scorer.mgr_rating, rank: @scorer.rank, score: @scorer.score }
    assert_redirected_to scorer_path(assigns(:scorer))
  end

  test "should destroy scorer" do
    assert_difference('Scorer.count', -1) do
      delete :destroy, id: @scorer
    end

    assert_redirected_to scorers_path
  end
end
