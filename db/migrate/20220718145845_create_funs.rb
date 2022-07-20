class CreateFuns < ActiveRecord::Migration[7.0]
  def change
    create_table :funs do |t|
      t.string :name
      t.string :content
      t.string :author

      t.timestamps
    end
  end
end
