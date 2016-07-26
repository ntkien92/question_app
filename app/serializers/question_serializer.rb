class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :japanese, :vietnamese, :answer1, :answer2, :answer3, :answer4
end
