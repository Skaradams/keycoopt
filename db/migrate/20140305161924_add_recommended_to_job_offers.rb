class AddRecommendedToJobOffers < ActiveRecord::Migration
  def change
    add_column :job_offers, :recommended, :boolean, default: false
  end
end
