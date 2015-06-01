class AddAttachmentResourceToPigeons < ActiveRecord::Migration
  def self.up
    change_table :pigeons do |t|
      t.attachment :resource
    end
  end

  def self.down
    remove_attachment :pigeons, :resource
  end
end
