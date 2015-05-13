class AddSlugToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :slug, :string
  end
end
