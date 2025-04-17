class EpgsController < ApplicationController
  def index
    @epgs = Epg.all
  end
end
