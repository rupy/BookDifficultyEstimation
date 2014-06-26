class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.text :asin
      t.integer :node_id
      t.text :browsenode
      t.text :author
      t.text :manufacturer
      t.text :url
      t.integer :amount
      t.text :contents
      t.text :pre_processed_contents

      t.timestamps
    end
  end
end
