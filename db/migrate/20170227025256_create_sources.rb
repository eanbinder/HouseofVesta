class CreateSources < ActiveRecord::Migration[5.0]
    
  def change
    create_table :sources do |t|
        t.string :title
        t.integer :year
        t.boolean :is_free
        t.string :access_link
        t.string :site_name
        t.string :publication
        t.timestamps
    end
  end
end
