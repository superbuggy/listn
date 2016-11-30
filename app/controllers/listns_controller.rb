class ListnsController < ApplicationController
  
  def index
    @listns = Listn.all
    render json: @listns.to_json(include: [:notes])
  end

  def show
    @listn = Listn.find(params[:id])
    render json: @listn.to_json(include: [:notes])
  end

  def create
    @listn = Listn.new(listn_params)
    if @listn.save
      render json: @listn.to_json(include: [:notes])
    end
  end

  def update
    @listn = Listn.find(params[:id])
    @listn.update(listn_params)
    render json: @listn.to_json(include: [:notes])
  end

  def destroy
    @listn = Listn.find(params[:id])
    @listn.destroy!
  end

  private
  def listn_params
    params.require(:listn).permit(:artist, :work, :work_type)
  end
end
