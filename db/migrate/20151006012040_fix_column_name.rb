class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :ingredients, :user_id, :fake
  end
end
