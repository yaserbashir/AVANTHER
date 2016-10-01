class FavoriteProductsController < ApplicationController

	# product = Product.first
	# product.favorites.count

	# ^^^^^^^^^^^^^^^^^^^^^^^^
	#klappt noch nicht, weiss ned einmal wo es rein könnte, 
	#soll aber die zudem anzeigen wie oft das Item geliked wurde


  

  def index
   @products = current_user.favorite_products  

   
  end

  def create
    @product = Product.find(params[:product_id] || params[:id])

  	  	 if Favorite.create(favoritable: @product, user: current_user)
      redirect_to @product, notice: 'Product has been favorited'
    else
      redirect_to @product, alert: 'Something went wrong...*sad panda*'
    end
  end
  
  def destroy
    @product = Product.find(params[:product_id] || params[:id])
    Favorite.where(favoritable_id: @product.id, user_id: current_user.id).first.destroy
    redirect_to @product, notice: 'Product is no longer in favorites'
    
  end
  
end
