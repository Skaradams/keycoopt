class JobOffer < ActiveRecord::Base
  attr_accessible :id, :company_description, :company_logo_url, :company_name, :country, :description, :industry, :location, :occupation, :salary, :summary, :title, :experience_level, :company_baseline, :published_at, :recommendation_allowed, :self_application_allowed, :company_picture_url, :recommendation, :self_application, :recommended

  scope :pending, where(recommended: false)  
end
