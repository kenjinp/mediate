class CreateShareables < ActiveRecord::Migration
  def change
    create_table :shareables do |t|
      t.string :title
      t.string :link
      t.boolean :is_public

      t.timestamps null: false
    end
  end
end
