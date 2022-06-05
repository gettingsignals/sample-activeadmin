class Writer < ApplicationRecord
  has_many :articles, dependent: :destroy
end
