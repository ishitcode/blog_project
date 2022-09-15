class SessionsController < ApplicationController
  def new
  end
  
  def create
     
      
    
  end

  def destory
    sessions[:user_id] = nil
    redirect_to root_path
  end

  def login
    
  end
   def signin
    user = User.find_by(username: params[:username])  #&& User.find_by(password: params[:password]) 
    if user  && user.authenticate(params[:password])
       session[:user_id] = user.id
       redirect_to articles_path
       #redirect_to 'user/show'

    else
      redirect_to root_path
    end
   end
end
