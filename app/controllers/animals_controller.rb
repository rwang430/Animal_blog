class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new

  end
end
