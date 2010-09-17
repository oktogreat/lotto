class CreateLottoTypes < ActiveRecord::Migration
  def self.up
    create_table :lotto_types do |t|
      t.integer :id
      t.string :name
      t.integer :rangeBottom
      t.integer :rangeTop

      t.timestamps
    end
  end

  def self.down
    drop_table :lotto_types
  end
end
