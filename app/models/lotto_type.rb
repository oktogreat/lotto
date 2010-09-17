class LottoType < ActiveRecord::Base
  validates :name,  :presence => true, :length => { :minimum => 5, :maximum =>50}
  validates :rangeBottom, :presence => true, :length => { :minimum => 0, :maximum =>49}
  validates :rangeTop, :presence => true, :length => { :minimum => 0, :maximum =>49}
end
