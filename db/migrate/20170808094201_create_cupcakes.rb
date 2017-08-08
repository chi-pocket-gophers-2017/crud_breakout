class CreateCupcakes < ActiveRecord::Migration
  def change
    create_table :cupcakes do |table|
      table.string :flavor, null: false
      table.boolean :filling, default: false
      table.boolean :gluten_free, default: false

      table.timestamps
    end
  end
end
