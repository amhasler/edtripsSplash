class EmailsController < ApplicationController

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(params[:email])
    @email.save
    redirect_to root_url, notice: "Thanks for signing up!"
  end


end
