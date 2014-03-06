class JobOffersController < ApplicationController
  def index
    fetch_job_offers
    @job_offer = JobOffer.pending.random
    redirect_to @job_offer, notice: flash[:notice], flash: { error: "Votre recommendation n'a pas pu être prise en compte" }
  end

  def show
    @job_offer = JobOffer.find(params[:id])

    # Don't show job offer if already recommended
    if @job_offer.recommended == true
      redirect_to root_path
    end
  end
end
