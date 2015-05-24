class AddAbilityAndTimeRequiredToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :ability, :string
  	add_column :projects, :time_to_complete, :string
  end
end
