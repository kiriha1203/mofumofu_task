class PropertiesController < ApplicationController

  def new
    @property = Property.new
  end

  def create
    property = Property.new(property_params)
    property.save
    redirect_to properties_url, notice: "物件「#{property.name}」を登録しました。"
  end

  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    property = Property.find(params[:id])
    property.update!(property_params)
    redirect_to properties_url, notice: "物件「#{property.name}」を削除しました。"
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :remarks)
  end

end
