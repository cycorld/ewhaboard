class CreatePins < ActiveRecord::Migration[5.0]
  def change
    create_table :pins do |t|
      t.string :title
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
