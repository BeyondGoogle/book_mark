class CreateBoardCards < ActiveRecord::Migration
  def change
    create_table :board_cards do |t|
      t.references :board, index: true, foreign_key: true
      t.references :card, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
