class EmailsController < ApplicationController


  def new
    @email = Email.new
    render :layout => false
  end

  def create
    @email = Email.new(params[:email])
    @email.save
    redirect_to root_url, notice: "Thanks for signing up!"
  end

  def show
    email = Email.find(params[:id])
  end
end
