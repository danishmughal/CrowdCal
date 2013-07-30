module Api
  module Dev
    class UsersController < ApplicationController
		respond_to :json

	  def show 
      @user = User.find(params[:id])
	  end

	  

    end
  end
end
