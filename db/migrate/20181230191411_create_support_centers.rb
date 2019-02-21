class CreateSupportCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :support_centers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :county
      t.integer :zip_code
      t.string :office_number
      t.string :website
      t.string :point_of_contact
      t.string :hotline
      t.string :type
      t.text :service_description
      t.string :eligibility
      t.float :cost
      t.float :added_cost
      t.boolean :crisis
      t.boolean :medical
      t.boolean :st_counsel
      t.boolean :ls_counsel
      t.boolean :legal
      t.boolean :case_management
      t.boolean :referral_system
      t.boolean :shelter
      t.boolean :empowerment
      t.boolean :prevention
      t.boolean :undocumented_friendly
      t.boolean :lgbtq_friendly
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
