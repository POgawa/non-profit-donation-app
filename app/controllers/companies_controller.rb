class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to root_path, notice: "Your company was added."
    else
      render 'new'
    end
  end

  def show
    @company = Company.find(params[:id])
    if @company == nil
      redirect_to root_path, notice: "Please sign in!"
    else
      render 'show'
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    if @company.update(company_params)
      redirect_to company_path(@company)
    else
      render 'edit'
    end
  end

private
  def company_params
    params.require(:company).permit(:name, :description, :phone, :city, :password, :password_confirmation)
  end
end
