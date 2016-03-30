class CreateCommitments < ActiveRecord::Migration
  def change
    create_table :commitments do |t|
      t.text :description
      t.string :tag
      t.references :user, index: true

      t.timestamps
    end
  end
end
