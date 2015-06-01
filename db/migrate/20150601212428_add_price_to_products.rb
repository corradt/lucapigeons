class AddPriceToProducts < ActiveRecord::Migration
  def change
  	add_column :products,:price,:float,default: 5.50
  end
end
