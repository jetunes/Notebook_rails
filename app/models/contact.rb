class Contact < ActiveRecord::Base
  belongs_to :kind
  has_one :adrress
  accepts_nested_attributes_for :adrress
end
