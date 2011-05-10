class AddRoleToInterview < ActiveRecord::Migration
  def self.up
    add_column :interviews, :phoneNumber, :bigint
    add_column :interviews, :remarks, :text
  end

  def self.down
    remove_column :interviews, :remarks
    remove_column :interviews, :phoneNumber
  end
end
