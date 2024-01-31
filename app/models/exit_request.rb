class ExitRequest < ApplicationRecord
  has_many :validators

  def all_validators_exited?
    validators.pluck(:status).all?('exited')
  end

  def sent_completed_email?
    EmailLog.where(record: self, type: 'eth_staking.exit_request_completed').exists?
  end

  def check_complete_status
    self.with_lock do
      if status != 'complete' && all_validators_exited?
        update(status: 'complete')
        EmailLog.create(record: self, type: 'eth_staking.exit_request_completed') unless sent_completed_email?
      end
    end
  end
end
