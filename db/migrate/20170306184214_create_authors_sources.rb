class CreateAuthorsSources < ActiveRecord::Migration[5.0]
  def change
    create_table :authors_sources do |t|
        t.references :author, foreign_key: true
        t.references :source, foreign_key: true
    end
      
      add_index(:authors_sources, [:source_id, :author_id], unique: true);
  end
end
