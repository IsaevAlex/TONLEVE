class ProductOrderMailer < ApplicationMailer
	def product_order_create(order)
		@order = order
		mail(to: @order.recipient_user.email,
			 subject: "Вам прислали сообщение",
			 from: "tonleve@service.com") 
	end
end
