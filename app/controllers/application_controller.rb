class ApplicationController < ActionController::Base
  include ActionView::Helpers::NumberHelper

  def package_page
    render 'webview/package_page'
  end

  helper_method :money

  def money target
    "#{number_with_delimiter(target.price.to_i)}" rescue ''
  end

end
