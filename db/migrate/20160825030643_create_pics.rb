class CreatePics < ActiveRecord::Migration[5.0]
  def change
    create_table :pics do |t|
      t.string :filename
      t.boolean :validated
      t.belongs_to :camera, foreign_key: true

      t.timestamps
    end
  end
end
