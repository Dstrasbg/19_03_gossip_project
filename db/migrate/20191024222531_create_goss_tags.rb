class CreateGossTags < ActiveRecord::Migration[5.2]
  def change
    create_table :goss_tags do |t|
      t.belongs_to :gossip
      t.belongs_to :tags

      t.timestamps
    end
  end
end
