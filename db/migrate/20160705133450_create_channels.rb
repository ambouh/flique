class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :imageUrl
      t.text :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
