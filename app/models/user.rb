class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :recognitions_gave, class_name: 'Recognition', foreign_key: :recognizer_id
has_many :recognitions_recieved, class_name: 'Recognition', foreign_key: :recognized_id
end
