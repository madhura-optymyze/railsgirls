class CreateScorers < ActiveRecord::Migration
  def change
    create_table :scorers do |t|
      t.string :employee_name
      t.integer :employee_id
      t.float :mgr_rating
      t.float :coworker_rating
      t.float :client_rating
      t.float :delay_percentage
      t.float :score
      t.integer :rank

      t.timestamps
    end
  end
end
