class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :immigration
      t.string :net_neutrality
      t.string :climate_change
      t.string :gun_control
      t.string :intellectual_property
      t.string :marijuana
      t.integer :election_cycle
      t.references :candidate_id, index: true, foreign_key: true
    end
  end
end
