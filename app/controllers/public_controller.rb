class PublicController < ApplicationController
 
  def index
    @traducteurs = Translator.all
  end

  def show
  end

end
