class AddEmailToInterview < ActiveRecord::Migration
  def self.up
    add_column :interviews, :email, :text
  end

  def self.down
    remove_column :interviews, :email
  end
end
