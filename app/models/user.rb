class User < ApplicationRecord
  has_many :recognitions
  has_many :recognized, class_name: 'Recognitions', foreign_key: :recognizer_id
  has_many :recognitions, class_name: 'Recognitions', foreign_key: :recognized_id
end
