class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.string :permalink
      t.integer :position
      t.boolean :visible
      t.text :context
      #t.integer :subject_id, index: true
      t.belongs_to :subject

      t.timestamps
    end
  end
end
