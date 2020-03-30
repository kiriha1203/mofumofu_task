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

  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :remarks)
  end

end
