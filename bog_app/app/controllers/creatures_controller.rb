class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def show
    @creatures = Creature.find(params[:id])
  end

  def new
    @creatures = Creature.new
  end

  def create
    Creature.create(c_params)
    redirect_to('/creatures')
  end

  def destroy
    @creature =Creature.find(params[:id])
    @creature.destroy
    redirect_to('/creatures')
  end

  private

  def c_params
    params.require(:creature).permit(:name, :description)
  end
end
