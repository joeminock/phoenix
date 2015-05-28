class AddFieldsToProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :supplies_cost, :integer
  	add_column :projects, :description, :text
  end
end
