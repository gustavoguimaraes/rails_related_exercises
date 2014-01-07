class EmailsController < ApplicationController
  def index
    @emails = Emails.all
  end

  def create
    @emails = Email.new
  end

  def new
    @email = Email.new(param[:email])
    if @email.save
      redirect_to "/emals"
    else
      render "new"
    end
  end

  def show
    @email = Email.find(param[:ids])
  end

  def update
    @email = email.find(param[:ids])
  end

  def edit
    @email = Email.find(param[:ids])
    if @email.save_attributes(param[:email])
      redirect_to @emails
    end
  end

  def delete
    @email = Email.find(param[:id])
    @email.delete
    render emails_url
  end
end