class ProductsController < ApplicationController
	
	before_action :find_product, only: [:show, :edit, :update, :destroy]

	def index
		if params[:category].blank?
		@products = Product.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@books = Product.where(:category_id => @category_id).order("created_at DESC")
		end	
	end

	def show
	end

	def new
		@product = current_user.products.build
		@categories = Category.all.map{ |c| [c.name, c.id] }
	end

	def create
		@product = current_user.products.build(product_params)
		@product.category_id = params[:category_id]

		if @product.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
		@categories = Category.all.map{ |c| [c.name, c.id] }
	end

	def update
		@product.category_id = params[:category_id]
		if @product.update(product_params)
			redirect_to product_path(@product)
		else
			render 'edit'
		end
	end

	def destroy
		@product.destroy
		redirect_to root_path
	end

private

	def product_params
		params.require(:product).permit(:title, :description, :designer, :size, :category_id)
	end

	def find_product
		@product = Product.find(params[:id])
	end
end
