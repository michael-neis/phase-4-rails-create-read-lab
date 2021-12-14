class CreateThings < ActiveRecord::Migration[6.1]
  def change
    create_table :things do |t|
      t.decimal :first
      t.float :second

      t.timestamps
    end
  end
end
