class CreateToilets < ActiveRecord::Migration[5.2]
  def change
    create_table :toilets do |t|
      t.string :name
      t.string :comment

      t.timestamps
    end
  end
end
