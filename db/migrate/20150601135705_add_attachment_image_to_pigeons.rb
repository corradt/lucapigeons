class AddAttachmentImageToPigeons < ActiveRecord::Migration
  def self.up
    change_table :pigeons do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pigeons, :image
  end
end
