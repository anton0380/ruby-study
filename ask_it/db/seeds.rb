# frozen_string_literal: true

# 30.times do
#   title = Faker::Hipster.sentence(word_count: 3)
#   body = Faker::Lorem.paragraph(sentence_count: 5, supplemental: true, random_sentences_to_add: 4)
#   Question.create title:, body:
# end

# User.find_each {|u| u.send(:set_gravatar_hash); u.save}

# 30.times do
#   title = Faker::Hipster.word
#   Tag.create title: title
# end

u = User.first
30.times do
  title = Faker::Hipster.sentence(word_count: 3)
  body = Faker::Lorem.paragraph(sentence_count: 5, supplemental: true, random_sentences_to_add: 4)
  Question.create title:, body:, user_id: u.id
end