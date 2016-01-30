json.array!(@scorers) do |scorer|
  json.extract! scorer, :id, :employee_name, :employee_id, :mgr_rating, :coworker_rating, :client_rating, :delay_percentage, :score, :rank
  json.url scorer_url(scorer, format: :json)
end
