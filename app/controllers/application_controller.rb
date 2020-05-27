class ApplicationController < ActionController::Base
  include ActionView::Helpers::NumberHelper

  def package_page
    render 'webview/package_page'
  end

  def payment_complete_page
    @payment = Payment.find_by(id: params[:payment])
    render 'webview/payment_complete_page'
  end

  helper_method :money

  def money target
    "#{number_with_delimiter(target.price.to_i)}" rescue ''
  end

end
