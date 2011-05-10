class CreateAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
      t.integer :document_id
      t.integer :interview_id
      t.timestamps
    end
  end

  def self.down
    drop_table :attachments
  end
end