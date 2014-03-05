class JobOffersController < ApplicationController
  def index
    fetch_job_offers
    @job_offer = JobOffer.pending.random
    redirect_to @job_offer
  end

  def show
    @job_offer = JobOffer.find(params[:id])
  end
end
