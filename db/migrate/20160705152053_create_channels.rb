class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :image_url
      t.text :description
      t.references :user

      t.timestamps null: false
    end
  end
end
