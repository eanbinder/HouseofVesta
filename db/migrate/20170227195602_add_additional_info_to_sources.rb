class AddAdditionalInfoToSources < ActiveRecord::Migration[5.0]
  def change
    add_column :sources, :additional_info, :string
  end
end
