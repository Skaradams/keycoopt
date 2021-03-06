class RecommendationsController < ApplicationController
  def new
    @job_offer = JobOffer.find(params[:job_offer_id])
    @recommendation = Recommendation.new
  end

  def create
    @job_offer = JobOffer.find(params[:job_offer_id])
    @recommendation = Recommendation.new(params[:recommendation])
    response = create_recommendation(@job_offer, @recommendation)
    
    if response and response == 201
      @job_offer.update_attributes(recommended: true)
      redirect_to root_path, notice: "Votre recommendation a bien été prise en compte"
    else
      redirect_to new_job_offer_recommendation_path(@job_offer), flash: { error: "Votre recommendation n'a pas pu être prise en compte" }
    end
  end
end
