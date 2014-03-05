module ApplicationHelper
  def fetch_job_offers
    token = api_connect

    if session[:last_fetched]
      diff = Time.now - session[:last_fetched].to_time

      # Fetch new offers every 10 minutes
      if diff > 600
        job_offers = token.get '/api/v1/job_offers', since: session[:last_fetched]
        session[:last_fetched] = Time.now.iso8601
      end
    else 
      job_offers = token.get '/api/v1/job_offers'
      session[:last_fetched] = Time.now.iso8601
    end

    if job_offers
      store_offers(job_offers.parsed["online"])
    end 
  end

  # Save offers in model when fetched
  def store_offers(job_offers)
    job_offers.each do |job_offer|
      if model = JobOffer.find(job_offer["id"])
        model.update_attributes job_offer
        model.save
      else
        JobOffer.create job_offer
      end
    end
  end

  def create_recommendation(job_offer, recommendation)
    token = api_connect

    if job_offer.present? and recommendation.present?
      response = token.post "/api/v1/job_offers/#{ job_offer.id }/recommendations", params: { recommendation: recommendation.attributes }
    end
    response.status if response
  end

  def api_connect
    OpenSSL::SSL::const_set('VERIFY_PEER', OpenSSL::SSL::VERIFY_NONE)
    client_id = Keycoopt::Application::CLIENT_ID
    secret    = Keycoopt::Application::SECRET_ID
    client    = OAuth2::Client.new(client_id, secret, site: Keycoopt::Application::ENDPOINT)
    client.password.get_token("keycoopt@2-45.pm", "password")
  end
end
