class ShipJob < ApplicationRecord
  # :job_id, :ship_id

belongs_to :ship
belongs_to :job
end
