class CreaturesController < ApplicationController
  def index
    @creatures = Creature.all
  end

  def show
    @creature = Creature.find(params[:id])
  end

  def new
    Creature.new
  end

  def create
    Creature.create(c_params)
    redirect_to('/creatures')
  end


  def edit
    @creature = Creature.find_by_id(params[:id])
  end

  def destroy
    @creature =Creature.find(params[:id])
    @creature.destroy
    redirect_to('/creatures')
  end

  def update
    @creature = Creature.find_by_id(params[:id])
    @creature.update_attributes(c_params)
    redirect_to('/creatures')
  end

 private

 def c_params
   params.require(:creature).permit(:name, :description)
 end

end
