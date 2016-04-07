def best_investment( array )

	max_return = []

	for i in (0..array.size - 2)

		purchase_price = array[i]

		max_return << array.slice(array.index(purchase_price) + 1, array.size - 1).map { |x| -purchase_price + x }.max

	end

	best_purchase_price = array[max_return.index(max_return.max)]
	best_sale_price = array.slice(array.index(best_purchase_price), array.size).max

	string = "The best purchase price is $#{best_purchase_price} on day #{array.index(best_purchase_price)}"\
	 				 " and sale price of $#{best_sale_price} on day #{array.index(best_sale_price)}, netting a profit of"\
	 				 " $#{best_sale_price - best_purchase_price}"

	 puts string

end


