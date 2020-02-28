class BillsController < ApplicationController
  def index
    bills = Bill.all
    render json: bills
  end

  def show
    bills = Bill.find(params[:id])
    render json: bills
  end

  def create
    bill = Bill.create(params.require(:user).permit(:username, :password))
    render json: bill
 end

def update
    bill = Bill.find(params[:id])
    render json: bill
end

def destroy
    bill = Bill.find(params[:id])
    bill.destroy
end

def bill_params
  params.require(:bill).permit(:user, :company_name, :amount, :payment_due, :category)
end

end
