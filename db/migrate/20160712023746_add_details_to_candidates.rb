class AddDetailsToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :photo_url, :string
    add_column :candidates, :bioguide_id, :string
  end
end
