class User < ApplicationRecord
  has_many :recognitions
  has_many :recognizer, class_name: 'Recognition', foreign_key: :recognizer_id
  has_many :recognitions, class_name: 'Recognition', foreign_key: :recognized_id
end
