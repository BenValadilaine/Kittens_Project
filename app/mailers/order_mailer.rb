class OrderMailer < ApplicationMailer
  default from: 'amaury.desbazeille@gmail.com'

  def order_confirmed(order)
    @user = User.find(order.user_id)
    @url  = 'https://kittens-project-develop.herokuapp.com/'

    # TO DO : create an array with all products ordered
    @products_ordered = Array.new
    ProductOrder.find_by(order_id: order.id)

    mail(to: @user.email, subject: 'Confirmation de votre commande')
  end
end
