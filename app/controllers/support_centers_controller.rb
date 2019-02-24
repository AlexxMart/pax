class SupportCentersController < ApplicationController
    before_action :authenticate_admin!, only: [:new,  :edit, :create, :update, :destroy]
    before_action :set_center, only: [:edit, :update, :show, :destroy]
  
    def index
      @support_centers = SupportCenter.all
    end
  
    def new
      @support_center = SupportCenter.new
    end
  
    def edit
    end
  
    def create
      @support_center = SupportCenter.new(support_center_params)
      if @support_center.save
        flash[:notice] = 'The support center was successfully added to the database.'
        redirect_to support_center_path(@support_center)
      else
        render 'new'
      end
    end
  
    def update
      if @support_center.update(support_center_params)
        flash[:update] = 'The support center details were successfully updated'
        redirect_to support_center_path(@support_center)
      else
        render 'edit'
      end
    end
  
    def search
      @results  = SupportCenter.where("cast(zip_code as text) like ? and type_of_center like ?", "%#{params[:search]}%", "%#{params[:filter]}%")
    end
  
    def show
    end
  
    def destroy
      @support_center.destroy
      redirect_to support_centers_path
      flash[:notice] = "The support center was successfully deleted"
    end
  
    private
      def support_center_params
        params.require(:support_center).permit(:name, :address, :city, :county, :zip_code, :office_number, :website, :point_of_contact, :hotline, :type_of_center, :service_description, :eligibility, :cost, :added_cost, :crisis, :medical, :st_counsel, :ls_counsel, :legal, :case_management, :referral_system, :shelter, :empowerment, :prevention, :undocumented_friendly, :lgbtq_friendly)
      end
  
      def set_center
        @support_center = SupportCenter.find(params[:id])
      end
  
end