class AddSexToPigeons < ActiveRecord::Migration
  def change
  	add_column :pigeons, :sex,:string, default: "M"
  end
end
