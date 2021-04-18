class PagesController < ApplicationController
  def home
    @disable_footer = true
  end
end
