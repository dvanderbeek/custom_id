class Validator < ApplicationRecord
  self.primary_key = :pubkey

  belongs_to :exit_request, optional: true

  after_update { exit_request&.check_complete_status if status == 'exited' }
end
