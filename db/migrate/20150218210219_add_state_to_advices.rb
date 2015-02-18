class AddStateToAdvices < ActiveRecord::Migration
  def change
    add_column :advices, :state, :string
  end
end
