class AddParaNumberToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :para_number, :integer
  end
end
