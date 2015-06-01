class CreatePigeons < ActiveRecord::Migration
  def change
    create_table :pigeons do |t|
      t.string :name
      t.string :matr
      t.string :year

      t.timestamps null: false
    end
  end
end
