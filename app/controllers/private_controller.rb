class PrivateController < ApplicationController
 
  def edit
  end

  def show
  end

  def create
    @translator = Translator.create(translator_params)
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def translator_params
    params.require(:translator).permit(:avatar)
  end

end
