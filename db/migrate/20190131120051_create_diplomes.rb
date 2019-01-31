class CreateDiplomes < ActiveRecord::Migration[5.2]
  def change
    create_table :diplomes do |t|
      t.string :name

      t.timestamps
    end
  end
end
