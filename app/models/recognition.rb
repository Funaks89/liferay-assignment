class Recognition < ApplicationRecord
  belongs_to :recognizer, class_name: 'User'
  belongs_to :recognized, class_name: 'User'
end
