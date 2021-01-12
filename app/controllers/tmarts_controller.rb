class TmartsController < ApplicationController
  def index
    @tmarts = Tmart.all
  end
end