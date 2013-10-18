class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :name
      t.string :file
      t.text :data

      t.timestamps
    end
  end
end
