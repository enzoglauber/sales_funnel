class Api::V1::OpportunitiesController < Api::V1::ApiController
  before_action :set_opportunity, only: [:update, :destroy]

  def index
    @opportunity = Opportunity.all
    render json: @opportunity
  end

  def create
    @opportunity = Opportunity.create(opportunity_params)
    render json: @opportunity
  end

  def update
    @Opportunity.update(opportunity_params)
    render json: @opportunity
  end

  def destroy
    @Opportunity.destroy
    render json: {message: 'ok'}
  end

  private
    def set_opportunity
      @opportunity = Opportunity.find(params[:id])
      @opportunities = @Opportunity.opportunities.all
    end

    def opportunity_params
      params.require(:opportunity).permit(:id, :title, :value, :customer, :stage_id)
    end
end