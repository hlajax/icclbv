# frozen_string_literal: true
class StatistiquesController < ApplicationController
  def index
  	@creneaus_by_day = Creneau
      .unscoped
      .select("date_trunc( 'day', cree_le ) as day")
      .group('day')
      .order("day desc")
  end
end
