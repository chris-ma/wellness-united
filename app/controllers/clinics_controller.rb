class ClinicsController < ApplicationController

  before_action :find_clinics, only: [:show, :edit, :destroy, :update]

  def index
    @clinics = Clinic.all
  end

  def new
    @clinic = Clinic.new  
  end

  def show
  end

  def edit
  end

  def create
    @clinic = Clinic.new(clinic_params)
      if @clinic.save
        redirect_to clinic_path(clinic_params)
      else
        render 'new'
    end
  end

  def update
    if @clinic.update(clinic_params)
      redirect_to @clinic
    else
      render 'edit'
    end 
  end

  def destroy
    @clinic.destroy
    redirect_to clinics_path
  end
private

  def find_clinics
    @clinic = Clinic.find params[:id]
  end

  def clinic_params
    params.require(:clinic).permit(:clinic_name, :description, :address, :landline, :mobile, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday)
  end

end
