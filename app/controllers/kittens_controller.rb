class KittensController < ApplicationController
  def index
    @kittens = Kitten.all

    respond_to do |f|
      f.html
      f.xml { render xml: @kittens }
      f.json { render json: @kittens }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kit_params)
    if @kitten.save
      flash[:success] = 'Kitten created Successfully.'
      redirect_to @kitten      
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show
    @kitten = Kitten.find(params[:id])
    respond_to do |f|
      f.html
      f.xml { render xml: @kitten }
      f.json { render json: @kitten }
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    kitten = Kitten.find(params[:id])
    kitten.update!(kit_params)
    flash[:success] = 'Kitten successfully updates.'
    redirect_to kitten
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    if @kitten.destroy
      flash[:success] = 'Kitten successfully destroyed.'
      redirect_to kittens_path
    else
      flash[:error] = 'Failed to destroy kitten.'
      redirect_back(fallback_location: root_path)
    end
  end

  private

  def kit_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
