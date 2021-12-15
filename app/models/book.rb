class Book < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :pg_search, 
    against: {
      title: 'A',
      genre: 'B',
      author: 'C'
    },
    using: {
      tsearch: { prefix: true }
    }
end