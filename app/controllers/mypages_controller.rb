class MypagesController < ApplicationController
	def index
		 
	end

	def my_board
		@boards = Board.where(user: current_user)
	end

	def my_board_delete
		Board.destroy(params[:board_id])

		redirect_to :back
	end

	def my_like
		
	end
end
