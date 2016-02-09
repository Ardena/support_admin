class Setting < ActiveRecord::Migration
  def change
    create_table :support_admin_settings do |t|
      t.string :class_name
      t.string :display_name
      t.boolean :default
      t.timestamps
    end
  end
end
