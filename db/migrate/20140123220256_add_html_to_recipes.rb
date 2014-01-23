class AddHtmlToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :html, :text
  end
end
