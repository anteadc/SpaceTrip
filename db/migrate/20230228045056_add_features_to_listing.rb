class AddFeaturesToListing < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :features, :text, array: true, default: []
  end
end
