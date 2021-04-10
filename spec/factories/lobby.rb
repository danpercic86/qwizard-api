FactoryBot.define do
  factory :lobby do
    quiz
    code { Faker::Lorem.sentence }
    status { Faker::Number.between(from: 0, to: 1) }
    current_question { Faker::Number.between(from: 0, to: quiz.questions.count) }
  end
end