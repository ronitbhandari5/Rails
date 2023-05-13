class CreateArticles < ActiveRecord::Migration[7.0]
  # def change
  #   create_table :articles do |t|
  #     t.string :title
  #     t.text :body

  #     t.timestamps
  #   end
  # end

  def change
    reversible do |dir|
      change_table :articles do |t|
        dir.up   { t.change :title, :integer }
        dir.down { t.change :title, :string }
      end
    end
  end
end