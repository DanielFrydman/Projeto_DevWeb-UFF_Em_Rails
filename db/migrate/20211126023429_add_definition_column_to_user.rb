class AddDefinitionColumnToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :definition, :integer, null: false, default: 1
  end
end
