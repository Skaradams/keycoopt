class RecommendationsController < ApplicationController
  def new
    @job_offer = JobOffer.find(params[:job_offer_id])
    @recommendation = Recommendation.new
  end

  def create
    @job_offer = JobOffer.find(params[:job_offer_id])
  end
end
