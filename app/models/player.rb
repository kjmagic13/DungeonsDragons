class Player < ActiveRecord::Base

	has_many :player_spells, dependent: :destroy
	has_many :spells, through: :player_spells

	accepts_nested_attributes_for :player_spells, allow_destroy: true, reject_if: proc { |s| s['spell_id'].blank? }

	default_scope { includes(:spells) }

end
