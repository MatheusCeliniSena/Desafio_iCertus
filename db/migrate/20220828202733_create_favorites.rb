class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.string :name
      t.text :description
      t.string :owner
      t.integer :stars
      t.text :language
      t.integer :forks
      t.text :clone_url
      t.text :url

      t.timestamps
    end
  end
end
