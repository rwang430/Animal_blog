class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    Page.create(page_params)
    redirect_to root_path
  end

  private

  def page_params
    params.require(:page).permit(:name, :description)
  end
end
