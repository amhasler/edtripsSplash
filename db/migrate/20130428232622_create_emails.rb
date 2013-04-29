class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :name
      t.string :email
      t.string :organization
      t.boolean :is_company
      t.boolean :is_teacher
      t.boolean :is_neither
      t.boolean :no_contact

      t.timestamps
    end
  end
end
