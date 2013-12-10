class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :technologies_used
      t.text :description

      t.timestamps
    end
  end
end
