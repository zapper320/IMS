class ChangeDataTypeforDocument < ActiveRecord::Migration
  def self.up
    change_column :documents, :user_id, :integer, :limit => 8
  end

  def self.down
    change_column :documents, :user_id
  end
end
