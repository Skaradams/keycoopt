class AddJobOfferIdToRecommendations < ActiveRecord::Migration
  def change
    add_column :recommendations, :job_offer_id, :integer
  end
end
