class LikesController < ApplicationController
  def like_toggle
    @board = Board.find(params[:board_id])
    @like = Like.find_by(user_id: current_user.id, board_id: params[:board_id])
    if @like.nil?
      Like.create(user_id: current_user.id, board_id: params[:board_id])
    else
      @like.destroy
    end
    @likes = Like.where(board_id: params[:board_id]).count
    respond_to do |like_toggle|
      like_toggle.js
    end
  end
end
