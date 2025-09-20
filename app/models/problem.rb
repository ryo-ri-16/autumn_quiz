class Problem < ApplicationRecord
  validates :kanji, presence: true, uniqueness: true
  validates :reading, presence: true
  validates :difficulty, inclusion: { in: %w[easy hard] }
end
