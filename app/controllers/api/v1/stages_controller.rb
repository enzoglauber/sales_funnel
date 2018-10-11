class Api::V1::StagesController < Api::V1::ApiController
  before_action :set_stage, only: [:update, :destroy]

  def index
    @stage = Stage.all
    render json: @stage, include: 'opportunities'
  end

  def create
    @stage = Stage.create(stage_params)
    render json: @stage
  end

  def update
    @stage.update(stage_params)
    render json: @stage
  end

  def destroy
    @stage.destroy
    render json: {message: 'ok'}
  end

  private
    def set_stage
      @stage = Stage.find(params[:id])
      @opportunities = @stage.opportunities.all
    end

    def stage_params
      params.require(:stage).permit(:id, :name)
    end
end