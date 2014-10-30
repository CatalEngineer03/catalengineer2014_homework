class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :title
      t.string :body
      t.datetime :date

      t.timestamps
    end
  end
end
