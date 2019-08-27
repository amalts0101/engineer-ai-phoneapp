class CreateAssortments < ActiveRecord::Migration[5.2]
  def change
    create_table :assortments do |t|
      t.references :user, index: true
      t.references :number, index: true
      t.timestamps
    end
  end
end
