class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :tag_name, null: false
      t.timestamps
    end
    #タグの名前の重複を避けるために、tag_nameにunique: trueという制約を設定
    add_index :tags, :tag_name, unique: true
  end
end