class Ability
  include CanCan::Ability

  def initialize(user)
     user ||= User.new

     can :create, User, id: user.id

     can :update, Service do | service |
         service.user == user
     end  

     can :update, Product do | product |
         product.user == user
     end  

     can :destroy , ProductComment do |comment|
         comment.try(:user_id) == user.id
     end

     can :destroy , ServiceComment do |comment|
         comment.try(:user_id) == user.id
     end

     can :destroy, Service do | service |
         service.user == user
     end

     can :destroy, Product do | product |
         product.user == user
     end
  end
end
