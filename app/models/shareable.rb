class Shareable < ActiveRecord::Base
  #validations
  validates :title, presence: {message:'title required'}
  validates :link, presence: {message:'link required'}
end
