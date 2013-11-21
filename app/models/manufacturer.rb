class Manufacturer < ActiveRecord::Base
  attr_accessible :address, :name

	has_many :products
  #has_and_belongs_to_many :resellers

  has_many :distributions
  has_many :resellers, :through => :distributions

#  def products
#    Product.where(:manufacturer_id => self.id)
#  end

end
