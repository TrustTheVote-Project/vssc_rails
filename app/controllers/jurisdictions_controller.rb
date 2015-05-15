class JurisdictionsController < ApplicationController
  
  def index
    @jurisdictions = Jurisdiction.all
  end
  
  
  def new
    @jurisdiction = Jurisdiction.new
  end
  def create
    @jurisdiction = Jurisdiction.new(jurisdiction_params)
    @jurisdiction.save!
    redirect_to @jurisdiction
  end
  
  def edit
    @jurisdiction = Jurisdiction.find(params[:id])
  end
  def update
    @jurisdiction = Jurisdiction.find(params[:id])
    @jurisdiction.update(jurisdiction_params)
    redirect_to @jurisdiction
  end
  
  def show
    @jurisdiction=Jurisdiction.find(params[:id])
  end
  
  def vssc_export
    render xml: Jurisdiction.find(params[:id]).to_vssc_xml.to_xml
  end
  
private
    def jurisdiction_params
      params.require(:jurisdiction).permit(:name, :state, :contact_info, 
      :background_csv, :background_vip, :vssc_election_report, 
      :selected_source_for_hart, :hart_election_report,
      :selected_source_for_reporting_unit_kml, :reporting_unit_kml)
    end
  
end
