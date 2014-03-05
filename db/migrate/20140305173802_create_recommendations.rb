class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.boolean :male
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :company
      t.string :job_title
      t.string :phone
      t.string :linked_in
      t.text :message
      t.boolean :named

      t.timestamps
    end
  end
end
