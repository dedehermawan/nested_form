class Article < ApplicationRecord
  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :comments, :allow_destroy => true, :reject_if => proc { |att| att['description'].blank? } 
  #accepts_nested_attributes_for :comments, :allow_destroy => true, :reject_if => :all_blank
end
