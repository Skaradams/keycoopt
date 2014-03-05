class CreateJobOffers < ActiveRecord::Migration
  def change
    create_table :job_offers do |t|
      t.text :company_description
      t.string :company_name
      t.string :company_logo_url
      t.string :country
      t.text :description
      t.string :industry
      t.string :location
      t.string :occupation
      t.string :salary
      t.text :summary
      t.string :title
      t.string :experience_level 
      t.string :company_baseline 
      t.date :published_at 
      t.boolean :recommendation_allowed 
      t.boolean :self_application_allowed 
      t.string :company_picture_url 
      t.string :recommendation 
      t.string :self_application
      t.timestamps
    end
  end
end
