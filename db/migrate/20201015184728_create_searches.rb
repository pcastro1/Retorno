class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :nombre
      t.string :region
      t.string :comuna
      t.integer :rbd
      t.string :estado

      t.timestamps
    end
  end
end
