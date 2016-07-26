class Question < ActiveRecord::Base
  attr_accessor :answer1, :answer2, :answer3, :answer4
  validates :japanese, uniqueness: true
end
