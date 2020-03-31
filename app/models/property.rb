class Property < ApplicationRecord
  has_many :places, dependent: :destroy
  accepts_nested_attributes_for :places, reject_if: :reject_both_blank, allow_destroy: true

  validates :name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age, presence: true

  def reject_both_blank(attributes)
    if attributes[:id]
      attributes.merge!(_destroy: "1") if attributes[:route_name].blank? and attributes[:station_name].blank? and attributes[:distance].blank?
      !attributes[:route_name].blank? and attributes[:station_name].blank? and attributes[:distance].blank?
    else
      attributes[:route_name].blank? and attributes[:station_name].blank? and attributes[:distance].blank?
    end
  end
end


