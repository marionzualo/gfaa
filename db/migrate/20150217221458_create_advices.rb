class CreateAdvices < ActiveRecord::Migration
  def change
    create_table :advices do |t|
      t.string  :text
      t.timestamps
    end
  end
end
