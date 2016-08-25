class CreateCameras < ActiveRecord::Migration[5.0]
  def change
    create_table :cameras do |t|
      t.integer :number
      t.belongs_to :experiments, foreign_key: true

      t.timestamps
    end
  end
end
