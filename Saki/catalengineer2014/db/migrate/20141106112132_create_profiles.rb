class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :Name
      t.string :Avatar

      t.timestamps
    end
  end
end
