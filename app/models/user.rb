class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :boards
  has_many :likes

  def is_like?(board)
    Like.find_by(user_id: self.id, board_id: board.id).present?
  end
  
end
