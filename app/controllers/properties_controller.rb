class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to @property, notice:"物件「#{@property.name}」を登録しました。"
    else
      render :new
    end
  end

  def index
    @properties = Property.all
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to properties_url, notice: "物件「#{property.name}」を更新しました。"
    else
      render :edit
    end
  end

  def destroy
    property.destroy
    redirect_to properties_url, notice: "物件「#{property.name}」を削除しました。"
  end
  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :remarks)
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
