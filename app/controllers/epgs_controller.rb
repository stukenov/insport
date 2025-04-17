# frozen_string_literal: true

class EpgsController < ApplicationController
  def index
    @epgs = Epg.all
  end
end
