class Recommendation < ActiveRecord::Base
  attr_accessible :company, :email, :first_name, :job_title, :last_name, :linked_in, :male, :message, :named, :phone, :job_offer_id
  belongs_to :job_offer

  validates_presence_of :email, :first_name, :last_name, :message
end
