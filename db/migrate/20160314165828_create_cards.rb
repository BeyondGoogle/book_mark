class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string    :url
      t.string    :title
      t.text      :detail
      t.integer   :bookmarks_count, default: 0
      t.timestamps null: false
    end
  end
end
