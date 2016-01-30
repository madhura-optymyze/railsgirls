class Scorer < ActiveRecord::Base
  validates :mgr_rating, numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to =>5 }, presence: true
  validates :coworker_rating, numericality: { :greater_than_or_equal_to => 0, :less_than_or_equal_to =>5 }, presence: true
end
