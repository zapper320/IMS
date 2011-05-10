class CreateImportCandidates < ActiveRecord::Migration
  def self.up
    create_table :import_candidates do |t|
      t.integer :serial_number
      t.string :name
      t.string :total_exp
      t.string :ror_exp
      t.date :doi
      t.string :type_location
      t.string :result
      t.timestamps
      
    end
  end

  def self.down
    drop_table :import_candidates
  end
end
