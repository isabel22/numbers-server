class NumbersController < ApplicationController
  def show
    number = params[:id]
    serial = NumberService.serial(number)
    if serial.present?
      render :json => NumberService.as_json(serial), :status => 200
    else
      render :nothing => true, :status => :bad_request
    end
  end
end
