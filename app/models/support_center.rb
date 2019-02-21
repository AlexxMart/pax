class SupportCenter < ActiveRecord::Base
    validates :name, presence: true, length: { minimum: 3 }
    validates :address, presence: true, length: { minimum: 10 }
    validates :city, presence: true
    validates :county, presence: true, length: { minimum: 3 }
    validates :zip_code, presence: true, length: { maximum: 5 }
    validates :city, presence: true
    validates :office_number, presence: true
    validates :website, presence: true
    validates :point_of_contact, presence: true
    validates :hotline, presence: true
    validates :type_of_center, presence: true
    validates :service_description, presence: true
    validates :eligibility, presence: true
    validates :cost, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :added_cost, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :crisis, inclusion: [true, false]
    validates :medical, inclusion: [true, false]
    validates :st_counsel, inclusion: [true, false]
    validates :ls_counsel, inclusion: [true, false]
    validates :legal, inclusion: [true, false]
    validates :case_management, inclusion: [true, false]
    validates :referral_system, inclusion: [true, false]
    validates :shelter, inclusion: [true, false]
    validates :empowerment, inclusion: [true, false]
    validates :prevention, inclusion: [true, false]
    validates :undocumented_friendly, inclusion: [true, false]
    validates :lgbtq_friendly, inclusion: [true, false]
end