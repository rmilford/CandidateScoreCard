class CreateCandidate < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :jurisdiction
      t.string :party
      t.boolean :incumbent
      t.timestamp
    end
  end
end
