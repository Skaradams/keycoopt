class JobOffer < ActiveRecord::Base
  attr_accessible :company_description, :company_logo_url, :company_name, :country, :description, :industry, :location, :occupation, :salary, :summary, :title
end
