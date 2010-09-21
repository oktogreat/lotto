class CreateLotteryResults < ActiveRecord::Migration
  def self.up
    create_table :lottery_results do |t|
      t.integer :drawNumber
      t.integer :lotteryTypeId
      t.date :date
      t.integer :drawSequence
      t.integer :drawNumber
      t.string :machineName
      t.integer :ballSet
      t.string :dayOfWeek

      t.timestamps
    end
  end

  def self.down
    drop_table :lottery_results
  end
end
