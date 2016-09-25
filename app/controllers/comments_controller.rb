class CommentsController < ApplicationController
	before_action :find_product
	before_action :find_comment, only: [:destroy]

	def create
		@comment = @product.comments.create(comment_params)
		@comment.user_id = current_user.id
		
		if @comment.save
			redirect_to product_path(@product)
		else
			render 'new'
		end
	end

	def destroy
		@comment.destroy
		redirect_to product_path(@product)
	end



	private

	def comment_params
		params.require(:comment).permit(:content)
	end
	
	def find_product
		@product = Product.find(params[:product_id])

	def find_comment
		@comment = @product.comments.find(params[:id])
	end
end
