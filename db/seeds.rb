# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Problem.create!([
  {
    kanji: '春夏秋冬',
    reading: 'しゅんかしゅうとう',
    meaning: '季節のこと',
    difficulty: 'easy'
  },
  {
    kanji: '秋季',
    reading: 'しゅうき',
    meaning: '秋の時期',
    difficulty: 'easy'
  },
  {
    kanji: '秋田県',
    reading: 'あきたけん',
    meaning: '日本の都道府県',
    difficulty: 'easy'
  },
  {
    kanji: '晩秋',
    reading: 'ばんしゅう',
    meaning: '秋の終わり頃',
    difficulty: 'easy'
  },
  {
    kanji: '秋葉原',
    reading: 'あきはばら',
    meaning: '東京都にある電気街',
    difficulty: 'easy'
  }
])
