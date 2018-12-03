class Contact < ActiveRecord::Base
  belongs_to :kind
  has_one :adrress
  has_many :phones

  accepts_nested_attributes_for :adrress

  accepts_nested_attributes_for :phones
end
