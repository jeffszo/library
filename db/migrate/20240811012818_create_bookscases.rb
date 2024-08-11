class CreateBookscases < ActiveRecord::Migration[7.2]
  def change
    create_table :bookscases do |t|
      t.integer :limit

      t.timestamps
    end
  end
end
