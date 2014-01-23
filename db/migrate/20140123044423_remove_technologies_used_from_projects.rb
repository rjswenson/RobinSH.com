class RemoveTechnologiesUsedFromProjects < ActiveRecord::Migration
  def change
   remove_column :projects, :technologies_used, :string
  end
end
