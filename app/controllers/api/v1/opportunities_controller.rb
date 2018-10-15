class Api::V1::OpportunitiesController < Api::V1::ApiController
  before_action :set_opportunity, only: [:update, :destroy]
  before_action :cannot_change_gain, only: [:update]

  def index
    @opportunity = Opportunity.all
    render json: @opportunity
  end

  def create
    @opportunity = Opportunity.create(opportunity_params)    
    render json: @opportunity
  end

  def update
    @opportunity.update(opportunity_params)
    render json: opportunity_params
  end
  def destroy
    @opportunity.destroy
    render json: {message: 'ok'}
  end

  private
    def cannot_change_gain
      if @opportunity.stage_id == 5 or @opportunity.stage_id == 6
        unless opportunity_params[:stage_id] == 6 or opportunity_params[:stage_id] == 5
          render(json: {}, status: :locked) and return     
        end
      end
    end

    def set_opportunity
      @opportunity = Opportunity.find(params[:id])
    end

    def opportunity_params
      params.require(:opportunity).permit(:title, :value, :customer, :stage_id)
    end
end