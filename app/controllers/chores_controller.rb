class ChoresController < ApplicationController

  def index
    @chores = Chore.all

    render json: @chores.order('created_at ASC')
  end

  def create
    @chore = Chore.create!(chore_params)

    render json: @chore
  end

  def update
   @chore = Chore.find(params[:id])
   @chore.update(chore_params)

    render json: @chore
  end

  def destroy
   @chore = Chore.find(params[:id])
   @chore.destroy

    render json: @chore
  end

  private

  def chore_params
    params.require(:chore).permit(:title, :description)
  end
end
