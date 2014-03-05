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

      t.timestamps
    end
  end
end
