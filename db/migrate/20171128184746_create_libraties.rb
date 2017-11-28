class CreateLibraties < ActiveRecord::Migration[5.1]
  def change
    create_table :libraties do |t|
      t.string :name
      t.integer :Pnumber

      t.timestamps
    end
  end
end
