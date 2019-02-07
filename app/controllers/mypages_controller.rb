class MypagesController < ApplicationController
	def index
		 
	end

	def my_board
		@boards = Board.where(user: current_user)
	end

	def my_like
		
	end
end
