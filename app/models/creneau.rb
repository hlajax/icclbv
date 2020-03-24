class Creneau < ApplicationRecord
	 default_scope { order(cree_le: :desc) }

  def self.total_for_current_day
    where("cree_le > ? AND cree_le < ?", Time.current.beginning_of_day, Time.current.end_of_day).count(:heure_debut)
  end
	belongs_to :membre
end
