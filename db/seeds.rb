# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
ApplicationRecord.transaction do
  Problem.delete_all

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
  },
  {
    kanji: '秋桜',
    reading: 'あきざくら',
    meaning: 'コスモス。ある曲を境にそのままコスモスと読むようにもなった。',
    difficulty: 'easy'
  },
  {
    kanji: '秋晴',
    reading: 'あきばれ',
    meaning: '秋の空',
    difficulty: 'easy'
  },
  {
    kanji: '春秋',
    reading: 'しゅうじゅん',
    meaning: '古代中国の戦国時代',
    difficulty: 'easy'
  },
  {
    kanji: '千秋楽',
    reading: 'せんしゅうらく',
    meaning: '行事などの終わり際',
    difficulty: 'easy'
  },
  {
    kanji: '秋雨',
    reading: 'あきさめ',
    meaning: '秋に降る冷たい雨',
    difficulty: 'easy'
  },
  {
    kanji: '秋刀魚',
    reading: 'さんま',
    meaning: '秋を旬とする魚',
    difficulty: 'hard'
  },
  {
    kanji: '錦秋',
    reading: 'きんしゅう',
    meaning: '秋景色',
    difficulty: 'hard'
  },
  {
    kanji: '秋海棠',
    reading: 'しゅうかいどう',
    meaning: 'スミレ目の植物',
    difficulty: 'hard'
  },
  {
    kanji: '中秋の名月',
    reading: 'ちゅうしゅうのめいげつ',
    meaning: '月見に最適な日。今年は10月6日',
    difficulty: 'hard'
  },
  {
    kanji: '秋津洲',
    reading: 'あきつしま',
    meaning: '本州の古い呼び方',
    difficulty: 'hard'
  },
  {
    kanji: '春蛙秋蝉',
    reading: 'しゅうあしゅうぜん',
    meaning: '騒がしいこと',
    difficulty: 'hard'
  },
  {
    kanji: '千秋万古',
    reading: 'せんしゅうばんこ',
    meaning: '長い年月',
    difficulty: 'hard'
  },
  {
    kanji: '秋芳町',
    reading: 'しゅうほうちょう',
    meaning: '山口県の地名',
    difficulty: 'hard'
  },
  {
    kanji: '秋穂',
    reading: 'あいお',
    meaning: '山口県の地名',
    difficulty: 'hard'
  },
  {
    kanji: '秋篠',
    reading: 'あきしの',
    meaning: '奈良県の地名',
    difficulty: 'hard'
  }
  ])
end
