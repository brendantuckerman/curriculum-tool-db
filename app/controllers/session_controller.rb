class SessionController < ApplicationController
  def new
    #We wil put the login form template here
  end

  def create 
    # This is the action to which the login form post request is posted.
    #It will add a user's id to the session hash, whhch will be used
    # for authentication and autherization
    # throughout the session
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      # If a user record with details entered in the form is present AND the user is 
      # authenticated (using bcrypt's authenticate method and the password entered in the form)
      # , it will store the id in the session hash and redirect them to the root path
      session[:user_id] = user.id
      redirect_to root_path
    else
      #If the user cannot be authenticated, redirect to the login_path
      flash[:error] = "Invaild email address or password"


      redirect_to login_path
    end
   
  end #end create


  #This is the action which facilitates the sign-out
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
