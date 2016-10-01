class ProductsController < ApplicationController


		
	before_action :find_product, only: [:show, :edit, :update, :destroy]
	
	

	def index
		  @products = Product.all.order("created_at DESC")
		  if params[:search]
		    @products = Product.search(params[:search]).order("created_at DESC")
		  else
		    @products = Product.all.order('created_at DESC')
		  end
	end

	def show
		
	end

	def new
		@product = current_user.products.build
	end

	def create
		@product = current_user.products.build(product_params)

		if @product.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @product.update(product_params)
			flash[:success] = "Item updated."
			redirect_to product_path(@product)
		else
			flash[:alert] = "Update failed.  Please check the form."
			render 'edit'
		end
	end

	def destroy
		@product.destroy
		flash[:success] = "Your Item has been deleted."
		redirect_to root_path
	end

private

	def product_params
		params.require(:product).permit(:title, :description, :designer, :size, :img)
	end

	def find_product
		@product = Product.find(params[:id])
	end
end
