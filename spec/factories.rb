FactoryBot.define do 
  factory :article do
    title { 'Я, наконец-то начал дубасить рельсы.' }
    text { "Как-то все не заходило, не заходило, а сейчас за уши не оттянешь" }

    factory :article_with_comments do
      after :create do |article, _evaluator|
        create_list :comment, 3, article: article
      end
    end
  end
end

FactoryBot.define do
  factory :comment do
    author { 'Mike' }
    sequence(:body) { |n| "comment body #{n}" }
  end
end