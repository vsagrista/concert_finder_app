class CommentsController < ApplicationController
	def new
	@concert = Concert.find(params[:concert_id])
	@comment = @concert.comments.create(params[:comment])
	end 
	def create
		concert = Concert.find(params[:concert_id])
		comment = Comment.new(comment: params[:comment][:comment])
		concert.comments << comment
		concert.save
	end

end
